require "mongo_mapper"
require "rails"
require "active_model/railtie"

module MongoMapper
  # = MongoMapper Railtie
  class Railtie < Rails::Railtie

    config.mongo_mapper = ActiveSupport::OrderedOptions.new

    rake_tasks do
      load "mongo_mapper/railtie/database.rake"
    end

    initializer "mongo_mapper.set_configs" do |app|
      ActiveSupport.on_load(:mongo_mapper) do
        app.config.mongo_mapper.each do |k,v|
          send "#{k}=", v
        end
      end
    end

    # This sets the database configuration and establishes the connection.
    initializer "mongo_mapper.initialize_database" do |app|
      config_file = Rails.root.join('config/mongo.yml')
      if config_file.file?
        config = YAML.load(ERB.new(config_file.read).result)
        MongoMapper.setup(config, Rails.env, :logger => Rails.logger)
      end
    end

    # Clear the identity map after each request
    initializer "mongo_mapper.clear_identity_map" do |app|
      app.config.middleware.use 'MongoMapper::Middleware::IdentityMap'
    end

    initializer "mongo_mapper.prepare_dispatcher" do |app|
      # See http://groups.google.com/group/mongomapper/browse_thread/thread/68f62e8eda43b43a/4841dba76938290c
      # to_prepare is called before each request in development mode and the first request in production.
      ActionDispatch::Callbacks.to_prepare do
        unless app.config.cache_classes
          # Rails reloading was making descendants fill up and leak memory, these make sure they get cleared
          ActiveSupport::DescendantsTracker.clear
          MongoMapper::Plugins::IdentityMap.models.clear
        end
      end
    end
  end
end

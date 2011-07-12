# encoding: UTF-8
module MongoMapper
  module Plugins
    module Validations
      extend ActiveSupport::Concern

      include ::ActiveModel::Validations

      module ClassMethods
        def validates_uniqueness_of(*attr_names)
          validates_with UniquenessValidator, _merge_attributes(attr_names)
        end

        def validates_associated(*attr_names)
          validates_with AssociatedValidator, _merge_attributes(attr_names)
        end
      end

      class UniquenessValidator < ::ActiveModel::EachValidator
        def initialize(options)
          super(options.reverse_merge(:case_sensitive => true))
        end

        def setup(klass)
          @klass = klass
        end

        def validate_each(record, attribute, value)
          conditions = scope_conditions(record)

          if options[:case_sensitive]
            conditions[attribute] = value
          else
            conditions[attribute] = /^#{Regexp.escape(value.to_s)}$/i
          end

          # Make sure we're not including the current document in the query
          conditions[:_id.ne] = record._id if record._id

          if @klass.exists?(conditions)
            record.errors.add(attribute, :taken, options.except(:case_sensitive, :scope).merge(:value => value))
          end
        end

        def message(instance)
          super || "has already been taken"
        end

        def scope_conditions(instance)
          Array(options[:scope] || []).inject({}) do |conditions, key|
            conditions.merge(key => instance[key])
          end
        end
      end

      class AssociatedValidator < ::ActiveModel::EachValidator
        def validate_each(record, attribute, value)
          if !Array.wrap(value).all? { |c| c.nil? || c.valid? }
            record.errors.add(attribute, :invalid, :message => options[:message], :value => value)
          end
        end
      end

    end
  end
end

# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mm-devise}
  s.version = "1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kristian Mandrup"]
  s.date = %q{2011-06-01}
  s.description = %q{dm-devise adds MongoMapper support to devise (http://github.com/plataformatec/devise) for authentication support for Rails}
  s.email = %q{kmandrup@gmail.com}
  s.files = ["test/mongo_mapper/compatibility_test.rb", "test/orm/mongo_mapper.rb", "test/rails_app/app/mongo_mapper/admin.rb", "test/rails_app/app/mongo_mapper/shim.rb", "test/rails_app/app/mongo_mapper/user.rb", "test/rails_app/config/application.rb", "test/rails_app/config/environment.rb", "test/test_helper.rb"]
  s.homepage = %q{http://github.com/kristianmandrup/mm-devise}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Support for using MongoMapper ORM with devise}
  s.test_files = ["test/mongo_mapper/compatibility_test.rb", "test/orm/mongo_mapper.rb", "test/rails_app/app/mongo_mapper/admin.rb", "test/rails_app/app/mongo_mapper/shim.rb", "test/rails_app/app/mongo_mapper/user.rb", "test/rails_app/config/application.rb", "test/rails_app/config/environment.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mongo_mapper>, [">= 0.9.0"])
      s.add_runtime_dependency(%q<devise>, [">= 1.2"])
    else
      s.add_dependency(%q<mongo_mapper>, [">= 0.9.0"])
      s.add_dependency(%q<devise>, [">= 1.2"])
    end
  else
    s.add_dependency(%q<mongo_mapper>, [">= 0.9.0"])
    s.add_dependency(%q<devise>, [">= 1.2"])
  end
end

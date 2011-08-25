# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mm-carrierwave}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Robert Beekman"]
  s.date = %q{2011-04-12}
  s.description = %q{Mongomapper ORM for Carrierwave}
  s.email = ["robert@80beans.com"]
  s.files = ["spec/fixtures/bork.txt", "spec/fixtures/landscape.jpg", "spec/fixtures/portrait.jpg", "spec/fixtures/test.jpeg", "spec/fixtures/test.jpg", "spec/lib/carrierwave/orm/mongomapper_spec.rb", "spec/public/uploads/test.jpg", "spec/spec_helper.rb"]
  s.homepage = %q{}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Mongomapper ORM for Carrierwave}
  s.test_files = ["spec/fixtures/bork.txt", "spec/fixtures/landscape.jpg", "spec/fixtures/portrait.jpg", "spec/fixtures/test.jpeg", "spec/fixtures/test.jpg", "spec/lib/carrierwave/orm/mongomapper_spec.rb", "spec/public/uploads/test.jpg", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mongo_mapper>, ["~> 0.9"])
      s.add_runtime_dependency(%q<carrierwave>, ["~> 0.5"])
      s.add_development_dependency(%q<rspec>, ["~> 2.1"])
      s.add_development_dependency(%q<timecop>, [">= 0"])
    else
      s.add_dependency(%q<mongo_mapper>, ["~> 0.9"])
      s.add_dependency(%q<carrierwave>, ["~> 0.5"])
      s.add_dependency(%q<rspec>, ["~> 2.1"])
      s.add_dependency(%q<timecop>, [">= 0"])
    end
  else
    s.add_dependency(%q<mongo_mapper>, ["~> 0.9"])
    s.add_dependency(%q<carrierwave>, ["~> 0.5"])
    s.add_dependency(%q<rspec>, ["~> 2.1"])
    s.add_dependency(%q<timecop>, [">= 0"])
  end
end

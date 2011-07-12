# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{faker}
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Benjamin Curtis"]
  s.date = %q{2008-04-03}
  s.description = %q{A port of Perl's Data::Faker - Generates fake names, phone numbers, etc.}
  s.email = %q{benjamin.curtis@gmail.com}
  s.files = ["test/test_faker.rb", "test/test_faker_internet.rb", "test/test_faker_name.rb", "test/test_helper.rb"]
  s.homepage = %q{http://faker.rubyforge.org}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{faker}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{A port of Perl's Data::Faker - Generates fake names, phone numbers, etc.}
  s.test_files = ["test/test_faker.rb", "test/test_faker_internet.rb", "test/test_faker_name.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

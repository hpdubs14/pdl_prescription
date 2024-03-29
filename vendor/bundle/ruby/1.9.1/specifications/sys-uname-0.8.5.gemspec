# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sys-uname}
  s.version = "0.8.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel J. Berger"]
  s.date = %q{2010-12-11}
  s.description = %q{    The sys-uname library provides an interface for gathering information
    about your current platform. The library is named after the Unix 'uname'
    command but also works on MS Windows. Available information includes
    OS name, OS version, system name and so on. Additional information is
    available for certain platforms.
}
  s.email = %q{djberg96@gmail.com}
  s.extensions = ["ext/extconf.rb"]
  s.files = ["test/test_sys_uname.rb", "ext/extconf.rb"]
  s.homepage = %q{http://www.rubyforge.org/projects/sysutils}
  s.licenses = ["Artistic 2.0"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{sysutils}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{An interface for returning system platform information}
  s.test_files = ["test/test_sys_uname.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<test-unit>, [">= 2.0.6"])
    else
      s.add_dependency(%q<test-unit>, [">= 2.0.6"])
    end
  else
    s.add_dependency(%q<test-unit>, [">= 2.0.6"])
  end
end

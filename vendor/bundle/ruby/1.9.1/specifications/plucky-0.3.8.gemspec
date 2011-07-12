# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{plucky}
  s.version = "0.3.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["John Nunemaker"]
  s.date = %q{2011-04-15}
  s.email = ["nunemaker@gmail.com"]
  s.homepage = %q{http://github.com/jnunemaker/plucky}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Thin layer over the ruby driver that allows you to quickly grab hold of your data (pluck it!).}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mongo>, ["~> 1.3"])
    else
      s.add_dependency(%q<mongo>, ["~> 1.3"])
    end
  else
    s.add_dependency(%q<mongo>, ["~> 1.3"])
  end
end

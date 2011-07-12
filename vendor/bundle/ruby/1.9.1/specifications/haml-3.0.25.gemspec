# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{haml}
  s.version = "3.0.25"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nathan Weizenbaum", "Chris Eppstein", "Hampton Catlin"]
  s.date = %q{2010-12-17}
  s.description = %q{      Haml (HTML Abstraction Markup Language) is a layer on top of XHTML or XML
      that's designed to express the structure of XHTML or XML documents
      in a non-repetitive, elegant, easy way,
      using indentation rather than closing tags
      and allowing Ruby to be embedded with ease.
      It was originally envisioned as a plugin for Ruby on Rails,
      but it can function as a stand-alone templating engine.
}
  s.email = %q{haml@googlegroups.com}
  s.executables = ["haml", "html2haml", "sass", "css2sass", "sass-convert"]
  s.files = ["test/sass/plugin_test.rb", "test/sass/script_conversion_test.rb", "test/sass/functions_test.rb", "test/sass/less_conversion_test.rb", "test/sass/scss/css_test.rb", "test/sass/scss/rx_test.rb", "test/sass/scss/scss_test.rb", "test/sass/script_test.rb", "test/sass/conversion_test.rb", "test/sass/extend_test.rb", "test/sass/engine_test.rb", "test/sass/css2sass_test.rb", "test/sass/callbacks_test.rb", "test/haml/util/subset_map_test.rb", "test/haml/template_test.rb", "test/haml/html2haml_test.rb", "test/haml/spec_test.rb", "test/haml/helper_test.rb", "test/haml/util_test.rb", "test/haml/engine_test.rb", "test/haml/spec/ruby_haml_test.rb", "bin/haml", "bin/html2haml", "bin/sass", "bin/css2sass", "bin/sass-convert"]
  s.homepage = %q{http://haml-lang.com/}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{haml}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{An elegant, structured XHTML/XML templating engine. Comes with Sass, a similar CSS templating engine.}
  s.test_files = ["test/sass/plugin_test.rb", "test/sass/script_conversion_test.rb", "test/sass/functions_test.rb", "test/sass/less_conversion_test.rb", "test/sass/scss/css_test.rb", "test/sass/scss/rx_test.rb", "test/sass/scss/scss_test.rb", "test/sass/script_test.rb", "test/sass/conversion_test.rb", "test/sass/extend_test.rb", "test/sass/engine_test.rb", "test/sass/css2sass_test.rb", "test/sass/callbacks_test.rb", "test/haml/util/subset_map_test.rb", "test/haml/template_test.rb", "test/haml/html2haml_test.rb", "test/haml/spec_test.rb", "test/haml/helper_test.rb", "test/haml/util_test.rb", "test/haml/engine_test.rb", "test/haml/spec/ruby_haml_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<yard>, [">= 0.5.3"])
      s.add_development_dependency(%q<maruku>, [">= 0.5.9"])
    else
      s.add_dependency(%q<yard>, [">= 0.5.3"])
      s.add_dependency(%q<maruku>, [">= 0.5.9"])
    end
  else
    s.add_dependency(%q<yard>, [">= 0.5.3"])
    s.add_dependency(%q<maruku>, [">= 0.5.9"])
  end
end

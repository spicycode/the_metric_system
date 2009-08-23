# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{the_metric_system}
  s.version = "2.3.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chad Humphries"]
  s.date = %q{2009-08-23}
  s.description = %q{	The metric system is an international decimalised system of measurement, first adopted by France in 1791.}
  s.email = %q{chad.humphries@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.md"
  ]
  s.files = [
    ".document",
     ".gitignore",
     ".treasure_map.rb",
     "LICENSE",
     "README.md",
     "Rakefile",
     "VERSION",
     "lib/the_metric_system.rb",
     "lib/the_metric_system/units_of_measure/flay_units.rb",
     "lib/the_metric_system/units_of_measure/flog_units.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "spec/the_metric_system/units_of_measure/flay_units_spec.rb",
     "spec/the_metric_system/units_of_measure/flog_units_spec.rb",
     "spec/the_metric_system_spec.rb",
     "the_metric_system.gemspec"
  ]
  s.homepage = %q{http://github.com/spicycode/the_metric_system}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{The metric system is an international decimalised system of measurement, first adopted by France in 1791.}
  s.test_files = [
    "spec/spec_helper.rb",
     "spec/the_metric_system/units_of_measure/flay_units_spec.rb",
     "spec/the_metric_system/units_of_measure/flog_units_spec.rb",
     "spec/the_metric_system_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_runtime_dependency(%q<flog>, [">= 2.2.0"])
      s.add_runtime_dependency(%q<flay>, [">= 1.4.0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<flog>, [">= 2.2.0"])
      s.add_dependency(%q<flay>, [">= 1.4.0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<flog>, [">= 2.2.0"])
    s.add_dependency(%q<flay>, [">= 1.4.0"])
  end
end

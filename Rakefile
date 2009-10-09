require 'rake'

begin
  require 'rubygems'
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "the_metric_system"
    gem.summary = %Q{	The metric system is an international decimalised system of measurement, first adopted by France in 1791.}
    gem.description = %Q{	The metric system is an international decimalised system of measurement, first adopted by France in 1791.}
    gem.email = "chad.humphries@gmail.com"
    gem.homepage = "http://github.com/spicycode/the_metric_system"
    gem.authors = ["Chad Humphries"]

    gem.add_dependency "flog", ">=2.2.0"
    gem.add_dependency "flay", ">=1.4.0"

    gem.add_development_dependency "rspec-meta", ">= 2.0.0.a1"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

begin 
  require 'rspec/core/rake_task'
  Rspec::Core::RakeTask.new(:spec) do |t|
    t.ruby_opts = '-Ilib -Ispec'
    t.pattern = 'spec/**/*_spec.rb'
  end

  desc "Run all examples using rcov"
  Rspec::Core::RakeTask.new :rcov do |t|
    t.rcov = true
    t.rcov_opts =  %[-Ilib -Ispec --exclude "gems/*,spec/resources,spec/lib,spec/spec_helper.rb,db/*,/Library/Ruby/*,config/*"]
    t.rcov_opts << %[--text-report --sort coverage]
    t.pattern = "spec/**/*_spec.rb"
  end

  task :default => [:check_dependencies, :spec]
rescue LoadError
  task :default do
    abort "Rspec is not available."
  end
end

begin
  %w{sdoc sdoc-helpers rdiscount}.each { |name| gem name }
  require 'sdoc_helpers'
rescue LoadError => ex
  puts "sdoc support not enabled:"
  puts ex.inspect
end

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ''
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "The Metric System #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

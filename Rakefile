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

    gem.add_development_dependency "rspec"
    gem.add_development_dependency "yard"

    gem.add_dependency "flog", ">=2.2.0"
    gem.add_dependency "flay", ">=1.4.0"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

begin 
  require 'spec/rake/spectask'

  Spec::Rake::SpecTask.new(:spec) do |spec|
    spec.libs << 'lib' << 'spec'
    spec.spec_files = FileList['spec/**/*_spec.rb']
    spec.spec_opts = ['-c', '-fs']
  end

  Spec::Rake::SpecTask.new(:rcov) do |spec|
    spec.libs << 'lib' << 'spec'
    spec.pattern = 'spec/**/*_spec.rb'
    spec.spec_opts = ['-c', '-fs']
    spec.rcov = true
  end

  task :spec => :check_dependencies

  task :default => :spec
rescue LoadError
  task :default do
    abort "Rspec is not available."
  end
end

begin
  require 'yard'
  YARD::Rake::YardocTask.new
rescue LoadError
  task :yardoc do
    abort "YARD is not available. In order to run yardoc, you must: sudo gem install yard"
  end
end

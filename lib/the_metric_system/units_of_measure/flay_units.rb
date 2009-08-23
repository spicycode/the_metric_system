module TheMetricSystem::UnitsOfMeasure
  class FlayUnits

    def self.reasonable_defaults
      { :threshold => 70, :directories => Dir["app/**/*.rb", "lib/**/*.rb"] }
    end

    def self.report_to_standards_body(options={})
      reasonable_defaults.merge!(options)

      # Don't like this, but still getting used to this whole, don't require rubygems in classes thing
      # Will refactor soon
      require 'flay'
      flay = Flay.new(:fuzzy => false, :diff => true, :summary => false, :verbose => false, :mass => options[:threshold])
      flay.process(*options[:directories])
      flay.report

      raise "Flay found #{flay.masses.size} chunks of code have a duplicate mass > #{options[:threshold]}" unless flay.masses.empty?
    end

  end
end

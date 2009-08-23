module TheMetricSystem::UnitsOfMeasure
  class FlogUnits

    def self.reasonable_defaults
      { :threshold => 25, :directories => ['lib'] }
    end

    def self.report_to_standards_body(options={})
      reasonable_defaults.merge!(options)

      # Don't like this, but still getting used to this whole, don't require rubygems in classes thing
      # Will refactor soon
      require 'flog'
      flog = Flog.new :methods => true
      flog.flog options[:directories]
      threshold = options[:threshold]

      bad_methods = flog.totals.select { |name, score| score > threshold }

      bad_methods.sort { |a,b| a[1] <=> b[1] }.each do |name, score|
        puts "%8.1f: %s" % [score, name]
      end
      
      raise "Flog found #{bad_methods.size} methods with a complexity > #{options[:threshold]}" unless bad_methods.empty?
    end

  end
end

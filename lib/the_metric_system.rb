module TheMetricSystem

  def self.version
    File.read('VERSION') 
  end
  
end

require 'the_metric_system/units_of_measure/flay_units'
require 'the_metric_system/units_of_measure/flog_units'

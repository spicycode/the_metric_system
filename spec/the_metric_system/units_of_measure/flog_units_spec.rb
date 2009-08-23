require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe TheMetricSystem::UnitsOfMeasure::FlogUnits do
  
  describe "reasonable defaults" do
    it "should have a default threshold of 25" do
      TheMetricSystem::UnitsOfMeasure::FlogUnits.reasonable_defaults[:threshold].should == 25
    end
  end
    
end
require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe TheMetricSystem::UnitsOfMeasure::FlayUnits do
  
  describe "reasonable defaults" do
    it "should have a default threshold of 70" do
      TheMetricSystem::UnitsOfMeasure::FlayUnits.reasonable_defaults[:threshold].should == 70
    end
  end
  
end
require File.expand_path(File.dirname(__FILE__) + "/spec_helper")                                                

describe TheMetricSystem do
  it "should load it's version number from the VERSION file" do
    stub(File).read('VERSION') { '7.8.9' }
    TheMetricSystem.version.should == '7.8.9'
  end
end 

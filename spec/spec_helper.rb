$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'the_metric_system'
require 'rubygems'
require 'rspec'
require 'rr'

Rspec::Core.configure do |c|
  c.mock_with :rr
  c.color_enabled = true
end

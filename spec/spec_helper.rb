$:.unshift File.dirname(__FILE__)
$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')

require 'app_version'
require 'spec'
require 'spec/autorun'

Spec::Runner.configure do |config|
end

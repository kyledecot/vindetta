require "bundler/setup"
require "webmock/rspec"
require "vindetta"
require "pry"
require 'vcr'

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.example_status_persistence_file_path = ".rspec_status"
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
  config.include(Capture)
end

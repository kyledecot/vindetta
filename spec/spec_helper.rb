require "bundler/setup"
require "vindetta"
require "pry"
require "simplecov"

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each { |f| require f }

SimpleCov.start

RSpec.configure do |config|
  config.example_status_persistence_file_path = ".rspec_status"
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

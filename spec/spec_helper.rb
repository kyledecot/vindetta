require "bundler/setup"
require "webmock/rspec"
require "vindetta"
require "pry"
require 'vcr'

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each { |f| require f }

VCR.configure do |config|
  config.cassette_library_dir = 'spec/cassettes'
  config.hook_into :webmock
  config.configure_rspec_metadata!
end

RSpec.configure do |config|
  config.example_status_persistence_file_path = ".rspec_status"
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
  config.include(Capture)
end

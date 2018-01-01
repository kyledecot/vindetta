require "simplecov"
SimpleCov.start

require "bundler/setup"
require "vindetta"
require "open3"

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.example_status_persistence_file_path = ".rspec_status"
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

def run(command, args = [])
  stdout_str, stderr_str, status = Open3.capture3("./exe/vindetta #{command} #{args.join(' ')}")
end

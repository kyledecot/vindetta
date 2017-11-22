RSpec::Matchers.define :have_exit_code do |expected|
  match do
    exit_code == expected
  end

  failure_message do |block|
    "expected command to exit with #{expected} but exited with #{exit_code}"
  end
end

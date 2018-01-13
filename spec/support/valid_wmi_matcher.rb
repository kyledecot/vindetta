RSpec::Matchers.define :be_a_valid_wmi do
  match do |actual|
    return false if actual.length != 3

    true
  end
end

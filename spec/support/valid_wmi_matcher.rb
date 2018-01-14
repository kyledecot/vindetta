RSpec::Matchers.define :be_a_valid_wmi do
  match { |wmi| Vindetta::Validator.wmi(wmi) }
end

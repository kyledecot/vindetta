RSpec::Matchers.define :be_a_valid_wmi do
  match { |wmi| Vindetta::Validator.new(Vindetta::Standard::ISO3779).wmi(wmi) }
end

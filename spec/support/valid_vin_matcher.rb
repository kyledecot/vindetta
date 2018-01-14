RSpec::Matchers.define :be_a_valid_vin do
  match { |vin| Vindetta::Validator.vin(vin) }
end

RSpec::Matchers.define :be_a_valid_vin do
  match do |actual|
    Vindetta::Validator.run(actual)
  end
end

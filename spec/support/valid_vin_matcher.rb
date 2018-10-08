# frozen_string_literal: true

RSpec::Matchers.define :be_a_valid_vin do
  match { |vin| Vindetta::Validator.new(Vindetta::Standard::ISO3779).vin(vin) }
end

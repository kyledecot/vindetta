# frozen_string_literal: true

RSpec::Matchers.define :be_of_model_year do |expected_model_year|
  match do |vin| 
    decoder = Vindetta::Decoder.new(Vindetta::Standard::ISO3779)
    @actual_model_year = decoder.vin(vin)[:model_year]

    @actual_model_year == expected_model_year
  end 

  failure_message do
    "expected that #{@actual_model_year} would be of model year #{expected_model_year}"
  end
end

FactoryGirl.define do
  skip_create

  factory :vin, class: Vindetta::Vin do
    value { "WBANU53578CT17179" }

    initialize_with { new(value) }
  end
end

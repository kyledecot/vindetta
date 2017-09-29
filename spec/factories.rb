FactoryGirl.define do
  factory :vin, class: Vindetta::Vin do
    initialize_with { new("WBANU53578CT17179") }
  end
end

FactoryGirl.define do
  skip_create

  sequence :vin do
    [
      "1GNSKCE07BR145670",
      "WBANU53578CT17179",
      "1GNALBEK8FZ116480"
    ].sample
  end

  factory :vin, class: Vindetta::Vin do
    value { generate(:vin) }

    initialize_with { new(value) }
  end

  factory :wmi, class: Vindetta::Vin::Wmi do
    vin

    initialize_with { new(vin) }
  end

  factory :vds, class: Vindetta::Vin::Vds do
    vin

    initialize_with { new(vin) }
  end
end

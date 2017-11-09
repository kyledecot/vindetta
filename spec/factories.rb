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
    vin { create(:vin, :value => raw_vin) }

    transient {
      raw_vin { generate(:vin) }
    }

    initialize_with { new(vin) }
  end

  factory :vds, class: Vindetta::Vin::Vds do
    vin { create(:vin, :value => raw_vin) }

    transient {
      raw_vin { generate(:vin) }
    }

    initialize_with { new(vin) }
  end

  factory :vis, class: Vindetta::Vin::Vis do
    vin { create(:vin, :value => raw_vin) }

    transient {
      raw_vin { generate(:vin) }
    }

    initialize_with { new(vin) }
  end

  factory :vehicle, class: Vindetta::Decoder::Result do
    variables do
      [{"Value"=>"", "ValueId"=>"", "Variable"=>"Suggested VIN", "VariableId"=>142},
 {"Value"=>"0 - VIN decoded clean. Check Digit (9th position) is correct", "ValueId"=>"0", "Variable"=>"Error Code", "VariableId"=>143},
 {"Value"=>"", "ValueId"=>"", "Variable"=>"Possible Values", "VariableId"=>144},
 {"Value"=>"", "ValueId"=>"", "Variable"=>"Additional Error Text", "VariableId"=>156},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Destination Market", "VariableId"=>10},
 {"Value"=>"CHEVROLET", "ValueId"=>"467", "Variable"=>"Make", "VariableId"=>26},
 {"Value"=>"GENERAL MOTORS LLC", "ValueId"=>"984", "Variable"=>"Manufacturer Name", "VariableId"=>27},
 {"Value"=>"Volt", "ValueId"=>"1838", "Variable"=>"Model", "VariableId"=>28},
 {"Value"=>"2017", "ValueId"=>"", "Variable"=>"Model Year", "VariableId"=>29},
 {"Value"=>"Detroit Hamtramck", "ValueId"=>"", "Variable"=>"Plant City", "VariableId"=>31},
 {"Value"=>"Premier w/Standard Emissions", "ValueId"=>"", "Variable"=>"Series", "VariableId"=>34},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Trim", "VariableId"=>38},
 {"Value"=>"PASSENGER CAR", "ValueId"=>"2", "Variable"=>"Vehicle Type", "VariableId"=>39},
 {"Value"=>"United States (USA)", "ValueId"=>"6", "Variable"=>"Plant Country", "VariableId"=>75},
 {"Value"=>"GMNA", "ValueId"=>"", "Variable"=>"Plant Company Name", "VariableId"=>76},
 {"Value"=>"Michigan", "ValueId"=>"", "Variable"=>"Plant State", "VariableId"=>77},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Trim2", "VariableId"=>109},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Series2", "VariableId"=>110},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Note", "VariableId"=>114},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Base Price ($)", "VariableId"=>136},
 {"Value"=>"984", "ValueId"=>"", "Variable"=>"Manufacturer Id", "VariableId"=>157},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Cash For Clunkers", "VariableId"=>158},
 {"Value"=>"Hatchback/Liftback/Notchback", "ValueId"=>"5", "Variable"=>"Body Class", "VariableId"=>5},
 {"Value"=>"4", "ValueId"=>"", "Variable"=>"Doors", "VariableId"=>14},
 {"Value"=>"6", "ValueId"=>"", "Variable"=>"Windows", "VariableId"=>40},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Wheel Base Type", "VariableId"=>60},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Track Width", "VariableId"=>159},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Gross Vehicle Weight Rating", "VariableId"=>25},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Bed Length (inches)", "VariableId"=>49},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Curb Weight (pounds)", "VariableId"=>54},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Wheel Base (inches)", "VariableId"=>111},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Wheel Base (inches) up to", "VariableId"=>112},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Bed Type", "VariableId"=>3},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Cab Type", "VariableId"=>4},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Trailer Type Connection", "VariableId"=>116},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Trailer Body Type", "VariableId"=>117},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Trailer Length (feet)", "VariableId"=>118},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Other Trailer Info", "VariableId"=>155},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Number of Wheels", "VariableId"=>115},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Wheel Size Front (inches)", "VariableId"=>119},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Wheel Size Rear (inches)", "VariableId"=>120},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Entertainment System", "VariableId"=>23},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Steering Location", "VariableId"=>36},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Number of Seats", "VariableId"=>33},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Number of Seat Rows", "VariableId"=>61},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Transmission Style", "VariableId"=>37},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Transmission Speeds", "VariableId"=>63},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Drive Type", "VariableId"=>15},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Axles", "VariableId"=>41},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Axle Configuration", "VariableId"=>145},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Brake System Type", "VariableId"=>42},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Brake System Description", "VariableId"=>52},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Battery Info", "VariableId"=>1},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Battery Type", "VariableId"=>2},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Number of Battery Cells per Module", "VariableId"=>48},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Battery Current (Amps)", "VariableId"=>57},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Battery Voltage (Volts)", "VariableId"=>58},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Battery Energy (KWh)", "VariableId"=>59},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"EV Drive Unit", "VariableId"=>72},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Battery Current (Amps) up to", "VariableId"=>132},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Battery Voltage (Volts) up to", "VariableId"=>133},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Battery Energy (KWh) up to", "VariableId"=>134},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Number of Battery Modules per Pack", "VariableId"=>137},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Number of Battery Packs per Vehicle", "VariableId"=>138},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Charger Level", "VariableId"=>127},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Charger Power (KW)", "VariableId"=>128},
 {"Value"=>"4", "ValueId"=>"", "Variable"=>"Engine Number of Cylinders", "VariableId"=>9},
 {"Value"=>"1500.0", "ValueId"=>"", "Variable"=>"Displacement (CC)", "VariableId"=>11},
 {"Value"=>"91.53561614209", "ValueId"=>"", "Variable"=>"Displacement (CI)", "VariableId"=>12},
 {"Value"=>"1.5", "ValueId"=>"", "Variable"=>"Displacement (L)", "VariableId"=>13},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Engine Stroke Cycles", "VariableId"=>17},
 {"Value"=>"L3A - DI: Direct Injectio, VVT: Variable Valve Timing, Hybrid, GEN 1",
  "ValueId"=>"",
  "Variable"=>"Engine Model",
  "VariableId"=>18},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Engine Power (KW)", "VariableId"=>21},
 {"Value"=>"Electric", "ValueId"=>"2", "Variable"=>"Fuel Type - Primary", "VariableId"=>24},
 {"Value"=>"Dual Overhead Cam (DOHC)", "ValueId"=>"2", "Variable"=>"Valve Train Design", "VariableId"=>62},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Engine Configuration", "VariableId"=>64},
 {"Value"=>"Gasoline", "ValueId"=>"4", "Variable"=>"Fuel Type - Secondary", "VariableId"=>66},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Fuel Delivery / Fuel Injection Type", "VariableId"=>67},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Engine Brake (hp)", "VariableId"=>71},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Cooling Type", "VariableId"=>122},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Engine Brake (hp) up to", "VariableId"=>125},
 {"Value"=>"Plug-in Hybrid", "ValueId"=>"3", "Variable"=>"Electrification Level", "VariableId"=>126},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Other Engine Info", "VariableId"=>129},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Turbo", "VariableId"=>135},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Top Speed (MPH)", "VariableId"=>139},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Engine Manufacturer", "VariableId"=>146},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Pretensioner", "VariableId"=>78},
 {"Value"=>"Manual", "ValueId"=>"1", "Variable"=>"Seat Belts Type", "VariableId"=>79},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Other Restraint System Info", "VariableId"=>121},
 {"Value"=>"All Rows", "ValueId"=>"6", "Variable"=>"Curtain Air Bag Locations", "VariableId"=>55},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Seat Cushion Air Bag Locations", "VariableId"=>56},
 {"Value"=>"1st Row (Driver & Passenger)", "ValueId"=>"3", "Variable"=>"Front Air Bag Locations", "VariableId"=>65},
 {"Value"=>"1st Row (Driver & Passenger)", "ValueId"=>"3", "Variable"=>"Knee Air Bag Locations", "VariableId"=>69},
 {"Value"=>"1st & 2nd Rows", "ValueId"=>"4", "Variable"=>"Side Air Bag Locations", "VariableId"=>107},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Driver Assist", "VariableId"=>16},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Adaptive Cruise Control", "VariableId"=>81},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Adaptive Headlights", "VariableId"=>82},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Anti-lock Braking System (ABS)", "VariableId"=>86},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Auto Brake / Auto Emergency Braking", "VariableId"=>87},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Blind Spot Monitoring / Detection", "VariableId"=>88},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Electronic Stability Control (ESC)", "VariableId"=>99},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Traction Control", "VariableId"=>100},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Forward Collision Warning", "VariableId"=>101},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Lane Departure Warning", "VariableId"=>102},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Lane Keep System", "VariableId"=>103},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Rear Visibility Camera", "VariableId"=>104},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Park Assist", "VariableId"=>105},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"TPMS", "VariableId"=>168},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Bus Length (feet)", "VariableId"=>147},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Bus Floor Configuration Type", "VariableId"=>148},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Bus Type", "VariableId"=>149},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Other Bus Info", "VariableId"=>150},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Custom Motorcycle Type", "VariableId"=>151},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Motorcycle Suspension Type", "VariableId"=>152},
 {"Value"=>nil, "ValueId"=>nil, "Variable"=>"Motorcycle Chassis Type", "VariableId"=>153},
 {"Value"=>nil, "ValueId"=>"", "Variable"=>"Other Motorcycle Info", "VariableId"=>154}]

    end

    initialize_with { new(variables) }
  end
end

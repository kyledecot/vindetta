module Vindetta
  class Decoder
    def self.vin(vin)
      {
        :plant_code => vin[PLANT_CODE_INDEX],
        :wmi => vin[WMI_RANGE],
        :check_digit => vin[CHECK_DIGIT_INDEX],
        :production_number => vin[PRODUCTION_NUMBER_RANGE]
      }
    end
  end
end

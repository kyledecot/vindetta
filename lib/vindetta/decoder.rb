module Vindetta
  class Decoder
    BASE_MODEL_YEAR = 1980
    ALPHA = ('A'..'Z').to_a
    NUMERIC = ("0".."9").to_a

    def self.vin(vin)
      {
        :plant_code => vin[PLANT_CODE_INDEX],
        :wmi => vin[WMI_RANGE],
        :check_digit => vin[CHECK_DIGIT_INDEX],
        :production_number => vin[PRODUCTION_NUMBER_RANGE],
        :model_year => model_year(vin),
      }
    end

    private

    def self.model_year(vin)
      index = ((ALPHA - %w[I O Q U Z]) + (NUMERIC - %w[0])).find_index { |c| c == vin[9] }

      if ALPHA.include?(vin[6])
        BASE_MODEL_YEAR + index + 30
      else
        BASE_MODEL_YEAR + index
      end
    end
  end
end

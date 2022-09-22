# frozen_string_literal: true

module Vindetta
  class Decoder
    attr_reader :standard

    BASE_MODEL_YEAR = 1980
    ALPHA = ("A".."Z").to_a
    NUMERIC = ("0".."9").to_a

    def initialize(standard)
      @standard = standard
    end

    def vin(vin)
      {
        plant_code: vin[PLANT_CODE_INDEX],
        wmi: vin[WMI_RANGE],
        check_digit: vin[CHECK_DIGIT_INDEX],
        production_number: vin[PRODUCTION_NUMBER_RANGE],
        model_year: model_year(vin),
        region: region(vin)
      }
    end

    private

    def region(vin)
      character = vin[0]
      position = standard.wmi.detect { |p| p["name"] == "region" }

      position["mapping"][character]
    end

    def model_year(vin)
      position = standard.vis.detect { |p| p["name"] === "model_year" }
      characters = position["characters"]
      additional = ALPHA.include?(vin[MODEL_YEAR_DIGIT_1_INDEX]) ? 30 : 0
      index = characters.find_index { |c| c == vin[MODEL_YEAR_DIGIT_2_INDEX] }

      BASE_MODEL_YEAR + index + additional
    end
  end
end

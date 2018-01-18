module Vindetta
  class Decoder
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
      @years ||= YAML.load_file(File.expand_path("../data/vis.yaml", __FILE__))["year"]
      @alpha ||= "ABCDEFGHJKLMNPRSTUVWXYZ".chars

      tenth = vin[9]
      seventh = vin[6]

      if @alpha.include?(seventh)
        @years[tenth].last
      else
        @years[tenth].first
      end
    end
  end
end

module Vindetta
  class Decoder
    def self.vin(vin)
      {
        :plant_code => plant_code(vin)
      }
    end

    def self.plant_code(vin)
      vin[PLANT_CODE_INDEX]
    end

    def self.check_digit(vin)
      vin[CHECK_DIGIT_INDEX]
    end

    def self.wmi(vin)
      vin[WMI_RANGE]
    end

    def self.vds(vin, options = {})
      defaults = { check_digit: true }
      options = defaults.merge(options)

      vin[VDS_RANGE].tap do |vds|
        vds.chop! unless options[:check_digit]
      end
    end

    def self.year(vin)
      vin(vin).year
    end

    def self.vis(vin)
      vin[VIS_RANGE]
    end

    def self.production_number(vin)
      vin[PRODUCTION_NUMBER_RANGE]
    end
  end
end

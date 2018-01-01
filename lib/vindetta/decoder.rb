require "vindetta/decoder/result"
require "net/http"
require "json"

module Vindetta
  class Decoder
    CHECK_DIGIT_INDEX = 8

    def self.vin(vin)
      Result.new(Api.get(vin)["Results"])
    end

    def self.plant_code(vin)
      vin[10]
    end

    def self.check_digit(vin)
      vin[CHECK_DIGIT_INDEX]
    end

    def self.wmi(vin)
      vin[0..2]
    end

    def self.vds(vin, options = {})
      defaults = { check_digit: true }
      options = defaults.merge(options)

      vin[3..CHECK_DIGIT_INDEX].tap do |vds|
        vds.chop! unless options[:check_digit]
      end
    end

    def self.year(vin)
      vin(vin).year
    end

    def self.vis(vin)
      vin[9..16]
    end

    def self.production_number(vin)
      vin[11..16]
    end
  end
end

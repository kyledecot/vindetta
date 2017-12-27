require "vindetta/decoder/result"
require "net/http"
require "json"

module Vindetta
  class Decoder
    def self.decode_vin(vin)
      Result.new(Api.get(vin)["Results"])
    end

    def self.plant_code(vin)
      vin[10]
    end

    def self.check_digit(vin)
      vin[8]
    end

    def self.wmi(vin)
      vin[0..2]
    end

    def self.vds(vin)
      vin[3..7]
    end

    def self.year(vin)
      decode_vin(vin).year
    end

    def self.production_number(vin)
      vin[11..16]
    end
  end
end

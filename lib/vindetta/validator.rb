module Vindetta
  class Validator
    def self.vin(vin)
      length(vin) && check_digit(vin)
    end

    def self.length(vin)
      vin.length == 17
    end

    def self.check_digit(vin)
      Calculator.check_digit(vin) == Decoder.check_digit(vin)
    end
  end
end

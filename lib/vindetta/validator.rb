module Vindetta
  class Validator
    LENGTH = 17
    MAP = "0123456789X".chars
    WEIGHTS = "8765432X098765432".chars

    def self.vin(vin)
      return false unless vin.length == LENGTH

      check_digit(vin) == Decoder.check_digit(vin)
    end

    def self.check_digit(vin)
      check_digit = vin.chars[8]
      calculated = vin.chars.map.with_index do |c, i|
        Transliterator::run(c) * MAP.find_index(WEIGHTS[i])
      end.sum

      MAP[calculated % 11]
    end
  end
end

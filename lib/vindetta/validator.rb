module Vindetta
  class Validator
    LENGTH = 17
    MAP = "0123456789X".chars
    WEIGHTS = "8765432X98765432".chars

    def self.vin(vin)
      return false unless vin.length == LENGTH

      check_digit(vin) == Decoder.check_digit(vin)
    end

    def self.check_digit(vin)
      wmi = Decoder.wmi(vin).chars
      vds = Decoder.vds(vin, :check_digit => false).chars
      vis = Decoder.vis(vin).chars

      calculated = [wmi, vds, vis].flatten.map.with_index do |c, i|
        Transliterator::run(c) * MAP.find_index(WEIGHTS[i])
      end.sum

      MAP[calculated % 11]
    end
  end
end

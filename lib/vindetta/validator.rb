module Vindetta
  class Validator
    def self.vin(vin)
      return false unless vin.length == 17

      Calculator.check_digit(vin) == Decoder.check_digit(vin)
    end

    def self.wmi(wmi)
      return false unless wmi.length == 3
    end

    def self.vds(vds)
      return false unless vds.length == 5

      true
    end

    def self.vis(vis)
      return false unless vis.length == 9

      true
    end
  end
end

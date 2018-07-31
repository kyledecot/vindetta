module Vindetta
  class Validator
    def self.vin(vin)
      return false unless vin.length == Vindetta::VIN_LENGTH

      Calculator.check_digit(vin) == Decoder.new(Vindetta::Standard::ISO3779).vin(vin)[:check_digit]
    rescue Calculator::InvalidCharacterError
        false
    end

    def self.wmi(wmi)
      return false unless wmi.length == Vindetta::WMI_LENGTH

      true
    end

    def self.vds(vds)
      return false unless vds.length == Vindetta::VDS_LENGTH

      true
    end

    def self.vis(vis)
      return false unless vis.length == Vindetta::VIS_LENGTH

      true
    end
  end
end

module Vindetta
  class Validator
    attr_reader :standard

    def initialize(standard)
      @standard = standard
    end

    def vin(vin)
      return false unless vin.length == standard::LENGTH

      Calculator.check_digit(vin) == Decoder.new(Vindetta::Standard::ISO3779).vin(vin)[:check_digit]
    rescue Calculator::InvalidCharacterError
        false
    end

    def wmi(wmi)
      return false unless wmi.length == Vindetta::WMI_LENGTH

      true
    end

    def vds(vds)
      return false unless vds.length == Vindetta::VDS_LENGTH

      true
    end

    def vis(vis)
      return false unless vis.length == Vindetta::VIS_LENGTH

      true
    end
  end
end

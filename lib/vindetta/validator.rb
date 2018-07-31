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
      return false unless wmi.length == standard.wmi.length

      true
    end

    def vds(vds)
      return false unless vds.length == standard.vds.length

      true
    end

    def vis(vis)
      return false unless vis.length == standard.vis.length

      true
    end
  end
end

module Vindetta
  class Validator
    attr_reader :standard

    def initialize(standard)
      @standard = standard
    end

    def vin(vin)
      return false unless vin.length == standard.length

      Calculator.check_digit(vin) == Decoder.new(Vindetta::Standard::ISO3779).vin(vin)[:check_digit]
    rescue Calculator::InvalidCharacterError
        false
    end

    def wmi(wmi)
      wmi.length == standard.wmi["length"]
    end

    def vds(vds)
      vds.length == standard.vds.length
    end

    def vis(vis)
      vis.length == standard.vis.length
    end
  end
end

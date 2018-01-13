module Vindetta
  class Generator
    WMI_CHARACTERS = "0123456789ABCDEFGHJKLMNPRSTUVWXYZ".chars
    VDS_CHARACTERS = "0123456789ABCDEFGHJKLMNPRSTUVWXYZ".chars
    VIS_CHARACTERS = "0123456789ABCDEFGHJKLMNPRSTUVWXYZ".chars

    def self.vin(options = {})
      "#{wmi}#{vds}#{vis}".tap do |vin|
        vin[8] = Calculator.check_digit(vin)
      end
    end

    def self.wmi(_options = {})
      WMI_CHARACTERS.sample(3).join("")
    end

    def self.vds(_options = {})
      VDS_CHARACTERS.sample(6).join("")
    end

    ##
    # One consistent element of the VIS is the 10th digit,
    # which is required worldwide to encode the model year of
    # the vehicle. Besides the three letters that are not
    # allowed in the VIN itself (I, O and Q), the letters U
    # and Z and the digit 0 are not used for the model year
    # code. The year code is the model year for the vehicle.
    #
    def self.vis(_options = {})
      VIS_CHARACTERS.sample(8).join("")
    end
  end
end

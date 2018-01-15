module Vindetta
  class Generator
    def self.vin(options = {})
      "#{wmi}#{vds}#{vis}".tap do |vin|
        vin[CHECK_DIGIT_INDEX] = Calculator.check_digit(vin)
      end
    end

    def self.wmi(_options = {})
      @wmi ||= YAML.load_file(File.expand_path("../data/wmi.yaml", __FILE__))

      @wmi["wmi"].keys.sample.rjust(WMI_LENGTH, "9")
    end

    def self.vds(_options = {})
      VDS_CHARACTERS.sample(VDS_LENGTH).join("")
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
      VIS_CHARACTERS.sample(VIS_LENGTH).join("")
    end
  end
end

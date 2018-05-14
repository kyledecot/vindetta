module Vindetta
  class Generator
    def self.vin(options = {})
      "#{wmi}#{vds}#{vis}".tap do |vin|
        vin[CHECK_DIGIT_INDEX] = Calculator.check_digit(vin)
      end
    end

    def self.wmi(_options = {})
      @wmis ||= begin
        path = File.expand_path("../data/wmi.yaml", __FILE__)
        YAML.load_file(path)["wmi"].keys
      end

      "#{@wmis.sample}".rjust(WMI_LENGTH, "9")
    end

    def self.vds(_options = {})
      VDS_CHARACTERS.sample(VDS_LENGTH).join("")
    end

    def self.vis(_options = {})
      [
        VIS_CHARACTERS.sample(VIS_LENGTH - 1),
        MODEL_YEAR_CHARACTERS.sample
      ].flatten.join("")
    end
  end
end

module Vindetta
  class Generator
    attr_reader :standard

    def initialize(standard)
      @standard = standard
    end

    def vin(options = {})
      "#{wmi}#{vds}#{vis}".tap do |vin|
        vin[CHECK_DIGIT_INDEX] = Calculator.check_digit(vin)
      end
    end

    def wmi(_options = {})
      @wmis ||= begin
        path = File.expand_path("../data/wmi.yaml", __FILE__)
        YAML.load_file(path)["wmi"].keys
      end

      "#{@wmis.sample}".rjust(WMI_LENGTH, "9")
    end

    def vds(_options = {})
      VDS_CHARACTERS.sample(VDS_LENGTH).join("")
    end

    def vis(_options = {})
      [
        MODEL_YEAR_CHARACTERS.sample,
        VIS_CHARACTERS.sample(VIS_LENGTH - 1)
      ].flatten.join("")
    end
  end
end

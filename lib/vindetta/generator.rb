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

      "#{@wmis.sample}".rjust(standard.wmi.length, "9")
    end

    def vds(_options = {})
      characters = standard.vds.map(&:characters)

      characters.map(&:sample).join
    end

    def vis(_options = {})
      characters = standard.vis.map(&:characters)

      characters.map(&:sample).join
    end
  end
end

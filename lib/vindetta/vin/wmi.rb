module Vindetta
  class Vin
    class Wmi
      DATA_PATH = File.expand_path("../../data/wmi.yaml", __FILE__)

      def initialize(vin)
        @vin = vin
      end

      def name
        @name ||= self.class.data[value]
      end

      alias eql? ==

      def value
        @vin[0..2]
      end

      def ==(other)
        self.class == other.class && value == other.value
      end

      def self.data
        @data ||= YAML.load_file(DATA_PATH)
      end
    end
  end
end

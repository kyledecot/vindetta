module Vindetta
  class Vin
    class WorldManufacturerIdentity
      DATA_PATH = File.expand_path("../../data/world_manufacturer_identity.yaml", __FILE__)

      attr_accessor :value

      def initialize(value)
        @value = value
      end

      def name
        @name ||= self.class.data[value]
      end

      alias eql? ==

      def ==(other)
        self.class == other.class && value == other.value
      end

      def self.data
        @data ||= YAML.load_file(DATA_PATH)
      end
    end
  end
end

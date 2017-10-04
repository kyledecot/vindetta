module Vindetta
  class Vin
    class Wmi
      DATA_PATH = File.expand_path("../../data/wmi.yaml", __FILE__)

      def initialize(vin)
        @vin = vin
      end

      def name
        @name ||= self.class.data["wmi"][value]
      end

      alias eql? ==

      def value
        @vin[0..2].join("")
      end

      def region
        @name ||= begin
          regions = self.class.data["region"] # TODO: Pull this out into private method

          regions.detect do |key, characters_for_region|
            break key if characters_for_region.include?(value[0])
          end
        end
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

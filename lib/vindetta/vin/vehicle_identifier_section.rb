module Vindetta
  class Vin
    class VehicleIdentifierSection
      DATA_PATH = File.expand_path("../../data/vehicle_identifier_section.yaml", __FILE__)

      attr_reader :value

      def initialize(value)
        @value = value
      end

      alias eql? ==

      def ==(other)
        self.class == other.class && value == other.value
      end

      def year
        @year ||= self.class.data["year"].first
      end

      private

      def self.data
        @data ||= YAML.load_file(DATA_PATH)
      end
    end
  end
end

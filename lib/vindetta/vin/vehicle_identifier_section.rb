module Vindetta
  class Vin
    class VehicleIdentifierSection
      attr_reader :value

      def initialize(value)
        @value = value
      end

      alias eql? ==

      def ==(other)
        self.class == other.class && value == other.value
      end
    end
  end
end

module Vindetta
  class Vin
    class Vds
      attr_reader :value

      def initialize(vin)
        @vin = vin
      end

      def value
        @vin[3..7].join("")
      end

      alias eql? ==

      def ==(other)
        self.class == other.class && value == other.value
      end
    end
  end
end

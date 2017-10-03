module Vindetta
  class Vin
    class Vis
      DATA_PATH = File.expand_path("../../data/vis.yaml", __FILE__)

      attr_reader :value

      def initialize(vin)
        @vin = vin
      end

      alias eql? ==

      def ==(other)
        self.class == other.class && value == other.value
      end

      def seventh
        @vin[6]
      end

      def value
        @vin[9..16].join("")
      end

      def year
        @year ||= begin
          years = self.class.data.dig("year", value[0])

          # TODO: Replace this w/ a constant of alpha characters and check against that
          begin
            Integer(seventh)
            years[0]
          rescue ArgumentError
            years[1]
          end
        end
      end

      private

      def self.data
        @data ||= YAML.load_file(DATA_PATH).stringify_keys
      end
    end
  end
end

require "vindetta/decoder/dsl"

module Vindetta
  class Decoder
    class Result
      extend Vindetta::Decoder::DSL

      has_value :make, 26
      has_value :model, 28
      has_value :year, 29, type: :int
      has_value :number_of_doors, 14, type: :int
      has_value :number_of_windows, 40, type: :int
      has_value :seat_belts_type, 79
      has_value :manufacturer_name, 27
      has_value :vehicle_type, 39
      has_value :plant_city, 31
      has_value :body_class, 5
      has_value :primary_fuel_type, 24
      has_value :engine_configuration, 64
      has_value :manufacturer_id, 157, type: :int
      has_value :primary_fuel_type, 24

      def initialize(variables)
        @variables = variables
      end

      def inspect
        "#<Vindetta::Decoder::Response:#{"0x00%x" % (object_id << 1)}>"
      end

      def to_json
        self.class.decoded_attributes.map do |a|
          [a, send(a)]
        end.to_h
      end
    end
  end
end

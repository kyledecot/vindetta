module Vindetta
  class Vehicle
    def self.attributes
      @attributes ||= []
    end

    def self.has_value(name, variable_id, options = {})
      attributes << name

      define_method name do
        value = value_for(variable_id)

        case options[:type]
        when :int then value&.to_i
        else
          value
        end
      end
    end

    def initialize(variables)
      @variables = variables
    end

    has_value :make, 26
    has_value :model, 28
    has_value :doors, 14, type: :int
    has_value :model_year, 29, type: :int
    has_value :windows, 40, type: :int
    has_value :seat_belts_type, 79
    has_value :manufacturer_name, 27
    has_value :vehicle_type, 39
    has_value :plant_city, 31
    has_value :body_class, 5

    def to_json
      self.class.attributes.map do |a|
        [a, send(a)]
      end.to_h
    end

    def value_for(variable_id)
      result = @variables.find { |r| r["VariableId"] == variable_id }
      return unless result

      result["Value"]
    end
  end
end

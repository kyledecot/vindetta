module Vindetta
  class Vehicle
    def self.has_value(name, variable_id, options = {})
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

    def to_json
      {
        :doors => doors,
        :model_year => model_year,
        :model => model,
        :make => make
      }
    end

    def value_for(variable_id)
      result = @variables.find { |r| r["VariableId"] == variable_id }
      return unless result

      result["Value"]
    end
  end
end

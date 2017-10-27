module Vindetta
  class Vehicle
    MAKE_VARIABLE_ID = 26
    MODEL_VARIABLE_ID = 28
    MODEL_YEAR_VARIABLE_ID = 29
    DOORS_VARIABLE_ID = 14

    def initialize(variables)
      @variables = variables
    end

    def make
      value_for(MAKE_VARIABLE_ID)
    end

    def model
      value_for(MODEL_VARIABLE_ID)
    end

    def model_year
      value_for(MODEL_YEAR_VARIABLE_ID)&.to_i
    end

    def doors
      value_for(DOORS_VARIABLE_ID)&.to_i
    end

    private

    def value_for(variable_id)
      result = @variables.find { |r| r["VariableId"] == variable_id }
      return unless result

      result["Value"]
    end
  end
end

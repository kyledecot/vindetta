# frozen_string_literal: true

module Vindetta
  class Generator
    attr_reader :standard

    def initialize(standard)
      @standard = standard
    end

    def vin(options = {})
      model_year = options[:model_year]

      String.new("#{wmi}#{vds}#{vis}").tap do |vin|
        if model_year
          first, second = Calculator.model_year_digits(model_year)

          vin[MODEL_YEAR_DIGIT_1_INDEX] = first
          vin[MODEL_YEAR_DIGIT_2_INDEX] = second
        end

        vin[CHECK_DIGIT_INDEX] = Calculator.check_digit(vin)
      end
    end

    def wmi(_options = {})
      characters("wmi").map(&:sample).join
    end

    def vds(_options = {})
      characters("vds").map(&:sample).join
    end

    def vis(_options = {})
      characters("vis").map(&:sample).join
    end

    private

    def characters(section)
      standard.send(section).map { |p| p["characters"] }
    end
  end
end

# frozen_string_literal: true

module Vindetta
  class Generator
    attr_reader :standard

    def initialize(standard)
      @standard = standard
    end

    def vin(_options = {})
      String.new("#{wmi}#{vds}#{vis}").tap do |vin|
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

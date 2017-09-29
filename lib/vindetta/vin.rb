require 'active_support'
require 'active_model'

module Vindetta
  class Vin
    attr_reader :value
    include ActiveModel::Validations

    validates_with Validator

    def initialize(value)
      @value = value
    end

    alias :eql? :==

    def ==(other)
      self.class == other.class && value == other.value
    end

    def check_digit
      value[8]
    end
  end
end

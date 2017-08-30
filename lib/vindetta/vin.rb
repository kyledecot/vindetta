require "active_support"
require "active_model"

module Vindetta
  class Vin
    LENGTH = 17

    attr_reader :value
    include ActiveModel::Validations

    validates_length_of :value, is: LENGTH

    def initialize(value)
      @value = value
    end
  end
end

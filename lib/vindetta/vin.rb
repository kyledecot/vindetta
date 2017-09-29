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
  end
end

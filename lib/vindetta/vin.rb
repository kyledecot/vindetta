require "active_support"
require "active_model"

module Vindetta
  class Vin
    include ActiveModel::Validations
    include Enumerable

    def each(&block)
      @value.chars(&block)
    end

    def [](index)
      each[index]
    end

    attr_reader :value

    validates_with Validator

    def initialize(value)
      @value = value
    end

    alias eql? ==

    def ==(other)
      self.class == other.class && value == other.value
    end

    def check_digit
      value[8]
    end

    def year
      vis.year
    end

    def region
      wmi.region
    end

    ##
    # World Manufacturer Identity
    #
    def wmi
      @wmi ||= Wmi.new(self)
    end

    # #
    # Vehicle Descriptor Section
    #
    def vds
      @vds ||= Vds.new(self)
    end

    ##
    # Vehicle Identifier Section
    #
    def vis
      @vis ||= Vis.new(self)
    end

    def model_year
      value[9]
    end

    def manufacturing_plant
      value[10]
    end

    def serial_number
      value[11..16]
    end
  end
end

require "active_support"
require "active_model"

module Vindetta
  class Vin
    include ActiveModel::Validations
    include Enumerable

    def each(&block)
      @value.chars(&block)
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
      vehicle_identifier_section.year
    end

    def world_manufacturer_identity
      @world_manufacturer_identity ||= WorldManufacturerIdentity.new(value[0..2])
    end

    alias wmi world_manufacturer_identity

    def vehicle_descriptor_section
      @vehicle_descriptor_section ||= VehicleDescriptorSection.new(value[3..7])
    end

    alias vds vehicle_descriptor_section

    def vehicle_identifier_section
      @vehicle_identifier_section ||= VehicleIdentifierSection.new(value[9..16])
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

require "vindetta/cli"
require "vindetta/errors"
require "vindetta/generator"
require "vindetta/transliterator"
require "vindetta/validator"
require "vindetta/version"
require "vindetta/vin"
require "vindetta/vin/world_manufacturer_identity"
require "vindetta/vin/vehicle_descriptor_section"

module Vindetta
  def self.generate(options = {})
    Generator.generate(options)
  end
end

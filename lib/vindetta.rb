require "vindetta/cli"
require "vindetta/errors"
require "vindetta/generator"
require "vindetta/transliterator"
require "vindetta/validator"
require "vindetta/decoder"
require "vindetta/version"
require "vindetta/vin"
require "vindetta/vin/wmi"
require "vindetta/vin/vds"
require "vindetta/vin/vis"

module Vindetta
  def self.generate(options = {})
    Generator.generate(options)
  end
end

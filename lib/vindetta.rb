require "vindetta/cli"
require "vindetta/errors"
require "vindetta/generator"
require "vindetta/transliterator"
require "vindetta/validator"
require "vindetta/version"
require "vindetta/vin"

module Vindetta
  def self.generate(options = {})
    Generator.generate(options)
  end
end

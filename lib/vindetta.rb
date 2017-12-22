require "vindetta/cli"
require "vindetta/errors"
require "vindetta/generator"
require "vindetta/transliterator"
require "vindetta/validator"
require "vindetta/decoder"
require "vindetta/version"

module Vindetta
  def self.generate(options = {})
    Generator.generate(options)
  end
end

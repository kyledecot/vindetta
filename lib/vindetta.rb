require "vindetta/version"
require "vindetta/generator"
require "vindetta/cli"
require "vindetta/errors"
require "vindetta/transliterator"

module Vindetta
  def self.generate(options = {})
    Generator.generate(options)
  end
end

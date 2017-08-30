require 'vindetta/version'
require 'vindetta/generator'
require 'vindetta/cli'
require 'vindetta/errors'
require 'vindetta/transliterator'
require 'vindetta/vin'

module Vindetta
  def self.generate(options = {})
    Generator.generate(options)
  end
end

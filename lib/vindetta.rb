require "vindetta/version"
require "vindetta/generator"
require "vindetta/cli"

module Vindetta
  def self.generate(options = {})
    Generator.generate(options)
  end
end

require "vindetta/version"
require "vindetta/generator"

module Vindetta
  def self.generate(options = {})
    Generator.generate(options)
  end
end

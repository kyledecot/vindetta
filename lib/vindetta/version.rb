require_relative "./vindetta/generator"

module Vindetta
  VERSION = "0.2.0"

  def self.generate(options = {})
    Generator.generate(options)
  end
end

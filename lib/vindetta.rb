require 'vindetta/cli'
require 'vindetta/errors'
require 'vindetta/generator'
require 'vindetta/transliterator'
require 'vindetta/validator'
require 'vindetta/version'
require 'vindetta/vin'

require 'i18n'
I18n.load_path << 'config/locales/en.yml' # TODO: Where should this really go?!

module Vindetta
  def self.generate(options = {})
    Generator.generate(options)
  end
end

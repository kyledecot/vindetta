# frozen_string_literal: true

require "gli"
require "vindetta/version"
require "i18n"

I18n.load_path << Dir["./lib/vindetta/locale/*.yml"]
I18n.backend.load_translations

module Vindetta
  class CLI
    extend GLI::App

    program_desc "Vehicle Identification Number (VIN) CLI"
    version Vindetta::VERSION

    desc "Validates a VIN"

    command %i[validate v] do |c|
      c.action do |_global, _options, args|
        vin = args.first

        exit_now!(I18n.t("required"), 1) if vin.nil?

        standard = Vindetta::Standard::ISO3779
        validator = Vindetta::Validator.new(standard)

        puts validator.vin(vin)
      end
    end

    desc "Decodes a VIN"

    command %i[decode d] do |c|
      c.action do |_global, _options, args|
        vin = args.first

        exit_now!(I18n.t("required"), 1) if vin.nil?

        standard = Vindetta::Standard::ISO3779
        decoder = Vindetta::Decoder.new(standard)

        puts decoder.vin(vin)
      end
    end

    desc "Generates a random VIN"

    command %i[generate g] do |c|
      c.desc "Model year"
      c.flag [:m, "model-year"], type: Numeric

      c.action do |_global, options, _args|
        standard = Vindetta::Standard::ISO3779
        generator = Vindetta::Generator.new(standard)
        model_year = options["model-year"]

        puts generator.vin({ model_year: })
      end
    end
  end
end

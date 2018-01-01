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

        puts Vindetta::Validator.vin(vin)
      end
    end

    desc "Decodes a VIN"

    command %i[decode d] do |c|
      c.action do |_global, _options, args|
        vin = args.first

        exit_now!(I18n.t("required"), 1) if vin.nil?

        puts Vindetta::Decoder.vin(vin).to_json
      end
    end

    desc "Generates a random VIN"

    command %i[generate g] do |c|
      c.action do |_global, _options, _args|
        puts Vindetta::Generator.generate
      end
    end
  end
end

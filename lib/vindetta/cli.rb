require "gli"

module Vindetta
  class CLI
    extend GLI::App

    program_desc "Vehicle Identification Number (VIN) CLI"

    desc "Version"
    command %i[version v] do |c|
      c.action do
        puts Vindetta::VERSION
      end
    end

    desc "Transliterates a VIN character"
    arg_name "character"
    command %i[transliterate t] do |c|
      c.action do |_global, _options, args|
        puts Vindetta::Transliterator.run(args.first)
      end
    end

    desc "Validates a VIN"
    command %i[validate v] do |c|
      c.action do |_global, _options, args|
        puts Vindetta::Validator.run(args.first)
      end
    end

    desc "Decodes a VIN"
    command %i[decode d] do |c|
      c.action do |_global, _options, _args|
        vin = Vindetta::Vin.new(_args.first)
        puts Vindetta::Decoder.decode(vin)
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

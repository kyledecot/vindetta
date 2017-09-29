require "gli"

module Vindetta
  class CLI
    extend GLI::App

    program_desc "Vehicle Identification Number (VIN) CLI"

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

    desc "Generates a random VIN"
    command %i[generate g] do |c|
      c.action do |_global, _options, _args|
        puts Vindetta::Generator.generate
      end
    end
  end
end

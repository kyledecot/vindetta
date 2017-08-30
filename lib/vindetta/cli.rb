require 'gli'

module Vindetta
  class CLI
    extend GLI::App

    program_desc 'Utility for generating Vehicle Identification Numbers (VINs)'

    desc 'Transliterates a VIN'
    arg_name 'vin'
    command :transliterate do |c|
      c.action do |_global, _options, args|
        puts Vindetta::Transliterator.run(args.first)
      end
    end

    desc 'Generates a random vin'
    command :generate do |c|
      c.action do |_global, options, _args|
        puts Vindetta::Generator.generate(options)
      end
    end
  end
end

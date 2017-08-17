require "gli"

module Vindetta
  class CLI
    extend GLI::App

    program_desc 'Utility for generating Vehicle Identification Numbers (VINs)'

    command :generate do |c|
      c.flag :foobar
      c.action do |global, options, args|
        puts Vindetta::Generator.generate(options)
      end
    end
  end
end

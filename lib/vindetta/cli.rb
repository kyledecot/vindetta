require "gli"

module Vindetta
  class CLI
    include GLI::App

    def self.run(args)
      program_desc 'Utility for generating Vehicle Identification Numbers (VINs)'

      command :generate do |c|
        c.desc "Generates a random VIN"

        c.action do
          puts Vindetta::Generator.generate
        end
      end

      run(args)
    end
  end
end

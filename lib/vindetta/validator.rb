module Vindetta
  class Validator
    def self.run(vin)
      Vin.new(vin).valid?
    end
  end
end

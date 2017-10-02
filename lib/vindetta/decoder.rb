module Vindetta
  class Decoder
    def self.decode(vin)
      {
        :year => vin.year
      }
    end
  end
end

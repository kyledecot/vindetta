module Vindetta
  class Decoder
    def self.decode(vin)
      {
        :year => vin.year,
        :region => vin.region
      }
    end
  end
end

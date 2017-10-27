require "httparty"

module Vindetta
  class Decoder
    def self.decode_vin(vin)
      result = HTTParty.get("https://vpic.nhtsa.dot.gov/api/vehicles/decodevin/#{vin}?format=json")
      json = JSON.parse(result.body)

      Vehicle.new(json["Results"])
    end
  end
end

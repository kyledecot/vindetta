require "httparty"
require "vindetta/decoder/result"

module Vindetta
  class Decoder
    def self.decode_vin(vin)
      result = HTTParty.get("https://vpic.nhtsa.dot.gov/api/vehicles/decodevin/#{vin}?format=json")
      json = JSON.parse(result.body)

      Result.new(json["Results"])
    end
  end
end

require "net/http"
require "json"

module Vindetta
  class Api
    def self.decode(vin)
      uri = URI("https://vpic.nhtsa.dot.gov/api/vehicles/decodevin/#{vin}?format=json")

      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true

      request = Net::HTTP::Get.new(uri.request_uri)
      response = http.request(request)

      parse(http.request(request))
    end

    private

    def self.parse(response)
      JSON.parse(response.body)
    end
  end
end

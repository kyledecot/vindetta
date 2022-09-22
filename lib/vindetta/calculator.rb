# frozen_string_literal: true

module Vindetta
  class Calculator
    InvalidCharacterError = Class.new(StandardError)

    def self.check_digit(vin)
      transliterator = lambda do |c|
        index = "0123456789.ABCDEFGH..JKLMN.P.R..STUVWXYZ".chars.index(c)

        raise InvalidCharacterError if index.nil?

        index % 10
      end

      summer = lambda do |sum, (a, b)|
        sum + (a * b)
      end

      sum = vin
            .chars
            .map(&transliterator)
            .zip([8, 7, 6, 5, 4, 3, 2, 10, 0, 9, 8, 7, 6, 5, 4, 3, 2])
            .reduce(0, &summer)

      "0123456789X"[sum % 11]
    end

    def self.model_year_digits(model_year)
      standard = Vindetta::Standard::ISO3779
      characters = standard.vis.find { |v| v["name"] == "model_year" }["characters"]
      offset = model_year >= Decoder::BASE_MODEL_YEAR + characters.length ? characters.length : 0
      characters_by_year = characters.map.with_index { |c,i| [Decoder::BASE_MODEL_YEAR + i + offset, c] }.to_h
      first = model_year >= Decoder::BASE_MODEL_YEAR + characters.length ? "A" : "1"
      second = characters_by_year[model_year]

      [first, second]
    end 
  end
end

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
  end
end

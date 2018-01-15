module Vindetta
  class Calculator
    CHECK_DIGITS = "0123456789X".chars
    WEIGHTS = [8, 7, 6, 5, 4, 3, 2, 10, 0, 9, 8, 7, 6, 5, 4, 3, 2]

    def self.check_digit(vin)
      CHECK_DIGITS[sum(vin) % CHECK_DIGITS.length]
    end

    private

    def self.transliterate(vin)
      mapping = "0123456789.ABCDEFGH..JKLMN.P.R..STUVWXYZ".chars

      vin.chars.map do |c|
        index = mapping.find_index(c)
        raise Vindetta::InvalidCharacter, c unless index
        index % 10
      end
    end

    def self.sum(vin)
      transliterate(vin)
        .zip(WEIGHTS)
        .reduce(0) { |sum, (a, b)| sum + (a * b) }
    end
  end
end

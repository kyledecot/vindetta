module Vindetta
  class Calculator
    CHECK_DIGITS = "0123456789X".chars
    WEIGHTS = [8, 7, 6, 5, 4, 3, 2, 10, 0, 9, 8, 7, 6, 5, 4, 3, 2]

    def self.check_digit(vin)
      CHECK_DIGITS[sum(vin) % CHECK_DIGITS.length]
    end

    private

    def self.sum(vin)
      Transliterator
        .vin(vin)
        .zip(WEIGHTS)
        .reduce(0) { |sum, (a, b)| sum + (a * b) }
    end
  end
end

module Vindetta
  class Calculator
    def self.check_digit(vin)
      "0123456789X".chars[sum(vin) % 11]
    end

    private

    def self.sum(vin)
      Transliterator
        .vin(vin)
        .zip([8, 7, 6, 5, 4, 3, 2, 10, 0, 9, 8, 7, 6, 5, 4, 3, 2])
        .reduce(0) { |sum, (a, b)| sum + (a * b) }
    end
  end
end

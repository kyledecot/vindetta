module Vindetta
  class Calculator
    def self.check_digit(vin)
      "0123456789X".chars[sum(vin) % 11]
    end

    private

    def self.sum(vin)
      Transliterator
        .vin(vin)
        .zip("876543210098765432".chars.map(&:to_i))
        .reduce(0) { |sum, (a, b)| sum + (a * b) }
    end
  end
end

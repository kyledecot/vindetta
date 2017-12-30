module Vindetta
  class Calculator
    MAP = %w(0 1 2 3 4 5 6 7 8 9 X)
    WEIGHTS = [8, 7, 6, 5, 4, 3, 2, 10, 0, 9, 8, 7, 6, 5, 4, 3, 2]

    def self.check_digit(vin)
      sum = Transliterator
        .vin(vin)
        .zip(WEIGHTS)
        .reduce(0) {|sum, (a, b)| sum + (a * b) }

      MAP[sum % 11]
    end
  end
end

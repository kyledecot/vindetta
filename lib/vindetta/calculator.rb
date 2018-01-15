module Vindetta
  class Calculator
    def self.check_digit(vin)
      mapping = "0123456789.ABCDEFGH..JKLMN.P.R..STUVWXYZ".chars
      sum = vin
        .chars
        .map { |c| mapping.index(c) % 10 }
        .zip([8, 7, 6, 5, 4, 3, 2, 10, 0, 9, 8, 7, 6, 5, 4, 3, 2])
        .reduce(0) { |sum, (a, b)| sum + (a * b) }

      "0123456789X"[sum % 11]
    end
  end
end

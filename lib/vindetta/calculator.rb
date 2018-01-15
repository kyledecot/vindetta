module Vindetta
  class Calculator
    def self.check_digit(vin)
      transliterator = -> (c) do
        "0123456789.ABCDEFGH..JKLMN.P.R..STUVWXYZ".chars.index(c) % 10
      end

      summer = -> (sum, (a, b)) do
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

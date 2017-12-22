module Vindetta
  class Validator
    LENGTH = 17
    CHECK_DIGIT_INDEX = 8
    MAP = "0123456789X".chars
    WEIGHTS = "8765432X098765432".chars

    def self.run(value)
      return false unless value.length == LENGTH

      check_digit(value) == value[CHECK_DIGIT_INDEX]
    end

    def self.check_digit(value)
      check_digit = value.chars[8]
      calculated = value.chars.map.with_index do |c, i|
        Transliterator::run(c) * MAP.find_index(WEIGHTS[i])
      end.sum

      MAP[calculated % 11]
    end
  end
end

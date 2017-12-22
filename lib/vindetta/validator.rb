require "active_model"

# private static int transliterate(char c) {
# 	return "0123456789.ABCDEFGH..JKLMN.P.R..STUVWXYZ".indexOf(c) % 10;
# }
#
# private static char getCheckDigit(String vin) {
# 	String map = "0123456789X";
# 	String weights = "8765432X098765432";
# 	int sum = 0;
# 	for (int i = 0; i < 17; ++i) {
# 		sum += transliterate(vin.charAt(i)) * map.indexOf(weights.charAt(i));
# 	}
# 	return map.charAt(sum % 11);
# }
#
# private static boolean validate(String vin) {
#     if(vin.length()!=17) return false;
# 	return getCheckDigit(vin) == vin.charAt(8);
# }

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

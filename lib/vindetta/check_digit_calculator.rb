module Vindetta
  class CheckDigitCalculator
    def self.run(vin)
      map = '0123456789X'.split('')
      weights = '8765432X098765432'.split('')

      sum = vin.each_char.reduce(0) do |_total, character|
        Transliterator.run(character) * map.find_index(character)
      end

      # String map = "0123456789X";
      # 	String weights = "8765432X098765432";
      # 	int sum = 0;
      # 	for (int i = 0; i < 17; ++i) {
      # 		sum += transliterate(vin.charAt(i)) * map.indexOf(weights.charAt(i));
      # 	}
      # 	return map.charAt(sum % 11);
    end
  end
end

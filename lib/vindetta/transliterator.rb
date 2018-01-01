module Vindetta
  class Transliterator
    MAPPING = "0123456789.ABCDEFGH..JKLMN.P.R..STUVWXYZ".chars

    def self.vin(vin)
      vin.chars.map do |c|
        index = MAPPING.find_index(c)
        raise Vindetta::InvalidCharacter, c unless index
        index % 10
      end
    end

    def self.run(character)
      vin(character.to_s)[0]
    end
  end
end

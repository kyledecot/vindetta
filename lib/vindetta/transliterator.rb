module Vindetta
  class Transliterator
    MAPPING = '0123456789.ABCDEFGH..JKLMN.P.R..STUVWXYZ'.split('').freeze

    def self.run(character)
      index = MAPPING.find_index(character)
      raise Vindetta::InvalidCharacter.new(character) unless index
      index % 10
    end
  end
end

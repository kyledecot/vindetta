module Vindetta
  class Generator
    VINS = %w[
      KNAFX4A67E5095888
      1FTRX12W18KE97487
      2HGFA1F38BH525824
      1C4GP64L5YB667678
    ].freeze

    def self.generate(_options = {})
      VINS.sample
    end
  end
end

module Vindetta
  class Generator
    def self.generate(_options = {})
      fetch
    end

    def self.wmi(_options = {})
      fetch[0..2]
    end

    def self.vds(_options = {})
      fetch[3..8]
    end

    def self.vis(_options = {})
      fetch[9..16]
    end

    private

    def self.fetch(_options = {})
      Api.generate
    end
  end
end

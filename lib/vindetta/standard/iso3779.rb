module Vindetta
  module Standard
    class ISO3779
      LENGTH = 17

      def self.wmi
        OpenStruct.new(
          :length => 3
        )
      end

      def self.vds
        @vds ||= YAML.load_file("lib/vindetta/standard/iso3779.yml").fetch("vds")
      end

      def self.vis
        @vis ||= YAML.load_file("lib/vindetta/standard/iso3779.yml").fetch("vis")
      end
    end
  end
end

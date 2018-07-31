module Vindetta
  module Standard
    class ISO3779
      def self.wmi
        @wmi ||= yml.fetch("wmi")
      end

      def self.length
        @length ||= yml.fetch("length")
      end

      def self.vds
        @vds ||= yml.fetch("vds")
      end

      def self.vis
        @vis ||= yml.fetch("vis")
      end

      def self.yml
        @yml ||= YAML.load_file("lib/vindetta/standard/iso3779.yml")
      end

      private_class_method :yml
    end
  end
end

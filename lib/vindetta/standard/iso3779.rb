# frozen_string_literal: true

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
        @yml ||= File.open(File.expand_path("iso3779.yml", __dir__)) do |file|
          YAML.load_file(file)
        end
      end

      private_class_method :yml
    end
  end
end

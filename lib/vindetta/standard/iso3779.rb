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
        OpenStruct.new(
          :length => 6
        )
      end

      def self.vis
        OpenStruct.new(
          :length => 8
        )
      end
    end
  end
end

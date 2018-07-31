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
        @vds ||= [
          OpenStruct.new({
            :characters => "0123456789ABCDEFGHJKLMNPRSTUVWXYZ".chars
          }),
          OpenStruct.new({
            :characters => "0123456789ABCDEFGHJKLMNPRSTUVWXYZ".chars
          }),
          OpenStruct.new({
            :characters => "0123456789ABCDEFGHJKLMNPRSTUVWXYZ".chars
          }),
          OpenStruct.new({
            :characters => "0123456789ABCDEFGHJKLMNPRSTUVWXYZ".chars
          }),
          OpenStruct.new({
            :characters => "0123456789ABCDEFGHJKLMNPRSTUVWXYZ".chars
          }),
          OpenStruct.new({
            :characters => "0123456789ABCDEFGHJKLMNPRSTUVWXYZ".chars
          })
        ]
      end

      def self.vis
        OpenStruct.new(
          :length => 8
        )
      end
    end
  end
end

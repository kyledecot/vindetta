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
        @vis ||= [
          OpenStruct.new({
            :characters => ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "P", "R", "S", "T", "V", "W", "X", "Y"]
          }),
          OpenStruct.new({
            :characters => ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "P", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
          }),
          OpenStruct.new({
            :characters => ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "P", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
          }),
          OpenStruct.new({
            :characters => ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "P", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
          }),
          OpenStruct.new({
            :characters => ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "P", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
          }),
          OpenStruct.new({
            :characters => ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "P", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
          }),
          OpenStruct.new({
            :characters => ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "P", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
          }),
          OpenStruct.new({
            :characters => ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "P", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
          })
        ]
      end
    end
  end
end

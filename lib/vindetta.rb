require "vindetta/calculator"
require "vindetta/cli"
require "vindetta/decoder"
require "vindetta/generator"
require "vindetta/standard"
require "vindetta/validator"
require "vindetta/version"

module Vindetta
  VIN_LENGTH = 17
  WMI_LENGTH = 3
  VDS_LENGTH = 6
  VIS_LENGTH = 8

  CHECK_DIGIT_INDEX = 8
  PLANT_CODE_INDEX = 10

  WMI_CHARACTERS = "0123456789ABCDEFGHJKLMNPRSTUVWXYZ".chars
  VDS_CHARACTERS = "0123456789ABCDEFGHJKLMNPRSTUVWXYZ".chars
  VIS_CHARACTERS = "0123456789ABCDEFGHJKLMNPRSTUVWXYZ".chars
  MODEL_YEAR_CHARACTERS = VIS_CHARACTERS - "UZ".chars

  WMI_RANGE = 0..2
  VDS_RANGE = 3..CHECK_DIGIT_INDEX
  PRODUCTION_NUMBER_RANGE = 11..16
  VIS_RANGE = 9..16
end

require "vindetta/cli"
require "vindetta/errors"
require "vindetta/generator"
require "vindetta/validator"
require "vindetta/api"
require "vindetta/decoder"
require "vindetta/calculator"
require "vindetta/version"

module Vindetta
  VIN_LENGTH = 17
  WMI_LENGTH = 3
  VDS_LENGTH = 6
  VIS_LENGTH = 8

  CHECK_DIGIT_INDEX = 8

  WMI_CHARACTERS = "0123456789ABCDEFGHJKLMNPRSTUVWXYZ".chars
  VDS_CHARACTERS = "0123456789ABCDEFGHJKLMNPRSTUVWXYZ".chars
  VIS_CHARACTERS = "0123456789ABCDEFGHJKLMNPRSTUVWXYZ".chars
end

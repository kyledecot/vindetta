# frozen_string_literal: true

require "vindetta/calculator"
require "vindetta/cli"
require "vindetta/decoder"
require "vindetta/generator"
require "vindetta/standard"
require "vindetta/validator"
require "vindetta/version"

module Vindetta
  CHECK_DIGIT_INDEX = 8
  PLANT_CODE_INDEX = 10

  VIS_CHARACTERS = "0123456789ABCDEFGHJKLMNPRSTUVWXYZ".chars
  MODEL_YEAR_CHARACTERS = VIS_CHARACTERS - "UZ".chars

  WMI_RANGE = 0..2
  VDS_RANGE = 3..CHECK_DIGIT_INDEX
  PRODUCTION_NUMBER_RANGE = 11..16
  VIS_RANGE = 9..16
end

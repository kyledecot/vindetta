require 'active_model'

module Vindetta
  class Validator < ActiveModel::Validator
    LENGTH = 17

    def self.run(value)
      Vin.new(value).valid?
    end

    def validate(record)
      if record.value.length != LENGTH
        record.errors.add(:value, "Invalid Length") # TODO: Move to I18n
      end

      # TODO: Check format
    end
  end
end

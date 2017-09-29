require "active_model"

module Vindetta
  class Validator < ActiveModel::Validator
    LENGTH = 17

    def self.run(value)
      Vin.new(value).valid?
    end

    def validate(record)
      record.errors.add(:value, I18n.t("invalid_length")) if record.value.length != LENGTH

      # TODO: Check format
    end
  end
end

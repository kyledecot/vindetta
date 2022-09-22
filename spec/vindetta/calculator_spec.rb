# frozen_string_literal: true

require "spec_helper"

RSpec.describe Vindetta::Calculator do
  describe ".check_digit" do
    describe "with valid VIN" do
      it { expect(described_class.check_digit("11111111111111111")).to eq("1") }
      it { expect(described_class.check_digit("TWB1ZH3B579BHZXWS")).to eq("X") }
    end

    describe "with invalid VIN" do
      it "raises" do
        expect do
          described_class.check_digit("ZACCJBBt0FPB63072")
        end.to raise_error(described_class::InvalidCharacterError)
      end
    end
  end
end

require "spec_helper"

RSpec.describe Vindetta::Vin do
  describe "#==" do
    let(:first_vin) { create(:vin, value: "1") }
    let(:second_vin) { create(:vin, value: "1") }

    it { expect(first_vin).to eq(second_vin) }
  end

  describe "#check_digit" do
    let(:valid_vin) { Vindetta::Vin.new("WBANU53578CT17179") }

    it "returns the check digit" do
      expect(valid_vin.check_digit).to eq("7")
    end
  end
end

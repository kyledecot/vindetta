require "spec_helper"

RSpec.describe Vindetta::Vin do
  describe "#==" do
    it "works" do
      v1 = Vindetta::Vin.new("1")
      v2 = Vindetta::Vin.new("1")

      expect(v1).to eq(v2)
    end
  end

  describe "#check_digit" do
    let(:valid_vin) { Vindetta::Vin.new("WBANU53578CT17179") }

    it "returns the check digit" do
      expect(valid_vin.check_digit).to eq("7")
    end
  end
end

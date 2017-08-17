require "spec_helper"

RSpec.describe Vindetta::CheckDigitCalculator do
  describe ".run" do
    let(:vin) { "1M8GDM9AXKP042788" }

    it "calculates the check digit" do
      expect(described_class.run(vin)).to eq("X")
    end
  end
end

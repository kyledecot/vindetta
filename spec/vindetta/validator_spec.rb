require "spec_helper"

RSpec.describe Vindetta::Validator do
  describe ".vin" do
    context "when the VIN is valid" do
      let(:vin) { "WBANU53578CT17179" }

      it { expect(described_class.vin(vin)).to be(true) }
    end

    context "when the VIN is invalid" do
      context "when the check digit is wrong" do
        let(:vin) { "JN8AR16Y0RW090362" }

        it { expect(described_class.vin(vin)).to be(false) }
      end

      context "when the VIN is the incorrect length" do
        let(:vin) { "WBANU53578CT1" }

        it { expect(described_class.vin(vin)).to be(false) }
      end
    end
  end
end

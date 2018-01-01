require "spec_helper"

RSpec.describe Vindetta::Validator do
  describe ".length" do
    describe "when invalid" do
      it { expect(described_class.length("1234")).to be(false) }
    end

    describe "when valid" do
      it { expect(described_class.length("WBANU53578CT17179")).to be(true) }
    end
  end

  describe ".check_digit" do
    describe "when invalid" do
      it { expect(described_class.check_digit("JN8AR16Y0RW090362")).to be(false) }
    end

    describe "when valid" do
      it { expect(described_class.check_digit("WBANU53578CT17179")).to be(true) }
    end
  end

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
    end
  end
end

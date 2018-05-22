require "spec_helper"

RSpec.describe Vindetta::Validator do
  describe ".vin" do
    context "when valid" do
      let(:vin) { "11111111111111111" }

      it { expect(described_class.vin(vin)).to be(true) }
    end

    context "when invalid" do
      describe "lowercase" do
        it { expect(described_class.vin("ZACCJBBt0FPB63072")).to be(false) }
      end

      describe "length" do
        it { expect(described_class.vin("1234")).to be(false) }
      end

      describe "check digit" do
        it { expect(described_class.vin("JN8AR16Y0RW090362")).to be(false) }
      end
    end
  end

  describe ".wmi" do
    describe "when valid" do
      it { expect("1G1").to be_a_valid_wmi }
    end

    describe "when invalid" do
      it { expect("INVALID").to_not be_a_valid_wmi }
    end
  end

  describe ".vds" do
    describe "when valid" do
      it { expect(described_class.vds("123456")).to be(true) }
    end
  end

  describe ".vis" do
    describe "when valid" do
      it { expect(described_class.vis("12345678")).to be(true) }
    end
  end
end

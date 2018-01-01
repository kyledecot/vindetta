require "spec_helper"

RSpec.describe Vindetta::Decoder do
  describe ".vin", :vcr do
    it { expect(described_class.vin("1G1RB6S56HU172687")).to be_a(Vindetta::Decoder::Result) }
  end

  describe ".wmi" do
    it { expect(described_class.wmi("1G1RB6S56HU172687")).to eq("1G1") }
  end

  describe ".check_digit" do
    it { expect(described_class.check_digit("1G1RB6S56HU172687")).to eq("6") }
  end

  describe ".vds" do
    describe "without options" do
      it { expect(described_class.vds("1G1RB6S56HU172687")).to eq("RB6S56") }
    end

    describe "with options" do
      describe ":check_digit" do
        it { expect(described_class.vds("1G1RB6S56HU172687", check_digit: false)).to eq("RB6S5") }
      end
    end
  end

  describe ".vis" do
    it { expect(described_class.vis("1G1RB6S56HU172687")).to eq("HU172687") }
  end

  describe ".year" do
    it { expect(described_class.year("1JTHL6511HT155941")).to eq(1987) }
  end

  describe ".production_number" do
    it { expect(described_class.production_number("1JTHL6511HT155941")).to eq("155941") }
  end
end

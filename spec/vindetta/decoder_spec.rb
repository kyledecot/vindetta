require "spec_helper"

RSpec.describe Vindetta::Decoder do
  describe ".decode_vin", :vcr do
    it { expect(described_class.decode_vin("1G1RB6S56HU172687")).to be_a(Vindetta::Decoder::Result) }
  end

  describe ".wmi" do
    it { expect(described_class.wmi("1G1RB6S56HU172687")).to eq("1G1") }
  end

  describe ".check_digit" do
    it { expect(described_class.check_digit("1G1RB6S56HU172687")).to eq("6") }
  end

  describe ".vds" do
    it { expect(described_class.vds("1G1RB6S56HU172687")).to eq("RB6S5") }
  end

  describe ".year" do
    it { expect(described_class.year("1JTHL6511HT155941")).to eq(1987) }
  end
end

require "spec_helper"

RSpec.describe Vindetta::Generator do
  describe ".wmi" do
    it { expect(described_class.wmi.length).to eq(3) }
  end

  describe ".vds" do
    it { expect(described_class.vds.length).to eq(6) }
  end

  describe ".vis" do
    it { expect(described_class.vis.length).to eq(8) }
  end

  describe ".generate" do
    context "with no options", :vcr do
      subject { described_class.generate }

      it { is_expected.to be_a_valid_vin }
    end
  end
end

require "spec_helper"

RSpec.describe Vindetta::Generator do
  describe ".wmi" do
    context "with no options" do
      it { expect(described_class.wmi).to be_a_valid_wmi }
    end
  end

  describe ".vds" do
    context "with no options" do
      it { expect(described_class.vds).to be_a_valid_vds }
    end
  end

  describe ".vis" do
    context "with no options" do
      it { expect(described_class.vis).to be_a_valid_vis }
    end
  end

  describe ".vin" do
    context "with no options" do
      subject { described_class.vin }

      it { is_expected.to be_a_valid_vin }
    end
  end
end

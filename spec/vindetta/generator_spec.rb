# frozen_string_literal: true

require "spec_helper"

RSpec.describe Vindetta::Generator do
  let(:standard) { Vindetta::Standard::ISO3779 }
  let(:generator) { described_class.new(standard) }

  describe ".wmi" do
    context "with no options" do
      it { expect(generator.wmi).to be_a_valid_wmi }
    end
  end

  describe ".vds" do
    context "with no options" do
      it { expect(generator.vds).to be_a_valid_vds }
    end
  end

  describe ".vis" do
    context "with no options" do
      it { expect(generator.vis).to be_a_valid_vis }
    end
  end

  describe ".vin" do
    context "with no options" do
      subject { generator.vin }

      it { is_expected.to be_a_valid_vin }
    end
  end
end

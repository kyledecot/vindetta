require "spec_helper"

RSpec.describe Vindetta::Decoder do
  describe ".vin" do
    let(:result) { described_class.vin("1JTHL6511HT155941") }

    it { expect(result[:production_number]).to eq("155941") }
    it { expect(result[:wmi]).to eq("1JT") }
    it { expect(result[:check_digit]).to eq("1") }
  end
end

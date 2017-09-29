require 'spec_helper'

RSpec.describe Vindetta::Validator do
  describe '.run' do
    context "when the VIN is valid" do
      let(:vin) { "WBANU53578CT17179" }

      it { expect(described_class.run(vin)).to be(true) }
    end

    context "when the VIN is invalid" do
      context "when the VIN is the incorrect length" do
        let(:vin) { "WBANU53578CT1" }

        it { expect(described_class.run(vin)).to be(false) }
      end
    end
  end
end
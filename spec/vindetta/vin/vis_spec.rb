require "spec_helper"

RSpec.describe Vindetta::Vin::Vis do
  describe "#year" do
    let(:vin) { create(:vin, value: "1G2JC14KXM7611216") }

    it { expect(vin.year).to eq(1991) } # 1991 Pontiac Sunbird Base
  end
end

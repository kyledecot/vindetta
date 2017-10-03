require "spec_helper"

RSpec.describe Vindetta::Vin::Vis do
  describe "#year" do
    it { expect(create(:vin, value: "1G2JC14KXM7611216").year).to eq(1991) }
    it { expect(create(:vin, value: "WDBUF65J03A072396").year).to eq(2003) }
    it { expect(create(:vin, value: "1NXBR32E68Z942336").year).to eq(2008) }
  end
end

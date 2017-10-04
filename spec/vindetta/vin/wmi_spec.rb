require "spec_helper"

RSpec.describe Vindetta::Vin::Wmi do
  describe "#name" do
    let(:wmi) { create(:wmi, raw_vin: "3FAHP0JA3AR278047") }

    it { expect(wmi.name).to eq("Ford Motor Company Mexico") }
  end

  describe "#region" do
    let(:wmi) { create(:wmi, raw_vin: "3FAHP0JA3AR278047") }

    it { expect(wmi.region).to eq("North America") }
  end
end

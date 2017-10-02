require "spec_helper"

RSpec.describe Vindetta::Vin::WorldManufacturerIdentity do
  describe "#name" do
    let(:wmi) { create(:wmi, value: "1G1") }

    it { expect(wmi.name).to eq("Chevrolet USA") }
  end
end

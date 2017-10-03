require "spec_helper"

RSpec.describe Vindetta::Vin::Wmi do
  describe "#name" do
    let(:wmi) { create(:wmi, vin: create(:vin, value: "1G1")) }

    it { expect(wmi.name).to eq("Chevrolet USA") }
  end
end

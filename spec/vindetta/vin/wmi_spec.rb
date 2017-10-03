require "spec_helper"

RSpec.describe Vindetta::Vin::Wmi do
  describe "#name" do
    let(:wmi) { create(:wmi, vin: create(:vin, value: "3FAHP0JA3AR278047")) }

    it { expect(wmi.name).to eq("Ford Motor Company Mexico") }
  end
end

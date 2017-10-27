require "spec_helper"

RSpec.describe Vindetta::Vehicle do
  let(:vehicle) { create(:vehicle) }

  describe ".make" do
    it { expect(vehicle.make).to eq("CHEVROLET") }
  end

  describe ".model" do
    it { expect(vehicle.model).to eq("Volt") }
  end

  describe ".model_year" do
    it { expect(vehicle.model_year).to eq(2017) }
  end

  describe ".doors" do
    it { expect(vehicle.doors).to eq(4) }
  end
end

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

  describe ".windows" do
    it { expect(vehicle.windows).to eq(6) }
  end

  describe ".seat_belts_type" do
    it { expect(vehicle.seat_belts_type).to eq("Manual") }
  end

  describe ".manufacturer_name" do
    it { expect(vehicle.manufacturer_name).to eq("GENERAL MOTORS LLC") }
  end

  describe ".vehicle_type" do
    it { expect(vehicle.vehicle_type).to eq("PASSENGER CAR") }
  end

  describe ".plant_city" do
    it { expect(vehicle.plant_city).to eq("Detroit Hamtramck") }
  end

  describe ".body_class" do
    it { expect(vehicle.body_class).to eq("Hatchback/Liftback/Notchback") }
  end
end

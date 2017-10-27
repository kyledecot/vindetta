require "spec_helper"

RSpec.describe Vindetta::Vehicle do
  let(:vehicle) { create(:vehicle) }

  describe ".make" do
    it { expect(vehicle.make).to eq("CHEVROLET") }
  end

  describe ".model" do
    it { expect(vehicle.model).to eq("Volt") }
  end

  describe ".year" do
    it { expect(vehicle.year).to eq(2017) }
  end

  describe ".number_of_doors" do
    it { expect(vehicle.number_of_doors).to eq(4) }
  end

  describe ".number_of_windows" do
    it { expect(vehicle.number_of_windows).to eq(6) }
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

  describe ".primary_fuel_type" do
    it { expect(vehicle.primary_fuel_type).to eq("Electric") }
  end
end

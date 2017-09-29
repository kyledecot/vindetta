require "spec_helper"

RSpec.describe Vindetta::Vin do
  describe "#==" do
    it "works" do
      v1 = Vindetta::Vin.new("1")
      v2 = Vindetta::Vin.new("1")

      expect(v1).to eq(v2)
    end
  end
end

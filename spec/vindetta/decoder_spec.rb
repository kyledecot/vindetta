require "spec_helper"

RSpec.describe Vindetta::Decoder do
  describe ".decode_vin", :vcr do
    it { expect(described_class.decode_vin("1G1RB6S56HU172687")).to be_a(Vindetta::Vehicle) }
  end
end

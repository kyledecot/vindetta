require "spec_helper"

RSpec.describe Vindetta::Calculator do
  describe ".check_digit" do
    it { expect(described_class.check_digit("11111111111111111")).to eq("1") }
  end
end

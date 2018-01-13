require "spec_helper"

RSpec.describe Vindetta::Calculator do
  describe ".check_digit" do
    subject { described_class.check_digit("11111111111111111") }

    it { is_expected.to eq("1") }
  end
end

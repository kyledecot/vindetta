require "spec_helper"

RSpec.describe Vindetta::Generator do
  describe ".generate" do
    context "with no options", :vcr do
      subject { described_class.generate }

      it { is_expected.to be_a_valid_vin }
    end
  end
end

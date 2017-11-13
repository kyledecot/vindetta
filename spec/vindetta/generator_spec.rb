require "spec_helper"

RSpec.describe Vindetta::Generator do
  describe ".generate", :vcr do
    context "with no options" do
      subject { described_class.generate }

      it { is_expected.to be_a_valid_vin }
    end

    context "with options" do
      context "with :manufacturer" do
        subject { described_class.generate(:manufacturer => "Proton") }

        it { is_expected.to be_a_valid_vin }
      end
    end
  end
end

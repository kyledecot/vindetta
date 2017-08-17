require "spec_helper"

RSpec.describe Vindetta::Transliterator do
  describe ".run" do
    context "when the character is valid" do
      it "returns the value" do
        expect(described_class.run("X")).to eq(7)
      end

    end

    context "when the character is invalid" do
      it "raises an error" do
        expect { described_class.run("Q") }.to raise_error(Vindetta::InvalidCharacter)
      end
    end
  end
end

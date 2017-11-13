require "spec_helper"

RSpec.describe Vindetta::CLI do
  describe ".run" do
    describe "generate", :vcr do
      it "works with no arguments" do
        expect { described_class.run(["generate"]) }.to output(/^[0-9A-Z+]{,17}$/).to_stdout
      end
    end

    describe "decode", :vcr do
      describe "when given a vin" do
        it "decodes it" do
          output = capture_stdout { described_class.run(["decode", "1B7HC16X9WS651631"]) }

          expect(output).to be_a(String)
        end
      end
    end
  end
end

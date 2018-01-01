require "spec_helper"

RSpec.describe Vindetta::CLI do
  describe ".run" do
    describe "decode" do
      describe "without arguments" do
        let(:stderr) { run("decode", [])[1] }

        it { expect(stderr).to match(I18n.t!("required")) }
      end

      describe "with arguments" do
        let(:stdout) { run("decode", ["1G3AE37X9EW325440"])[0] }

        it { expect(stdout).to_not be_empty }
      end
    end

    describe "validate" do
      describe "without arguments" do
        let(:stderr) { run("validate", [])[1] }

        it { expect(stderr).to match(I18n.t!("required")) }
      end

      describe "with arguments" do
        let(:stdout) { run("validate", ["1G3AE37X9EW325440"])[0] }

        it { expect(stdout).to_not be_empty }
      end
    end
  end
end

# frozen_string_literal: true

require "spec_helper"

RSpec.describe Vindetta::Decoder do
  describe ".vin" do
    fixture("decoder").each do |row|
      let(:result) { described_class.new(Vindetta::Standard::ISO3779).vin(row["vin"]) }

      describe row["vin"] do
        it { expect(result[:production_number]).to eq(row["production_number"]) }
        it { expect(result[:wmi]).to eq(row["wmi"]) }
        it { expect(result[:check_digit]).to eq(row["check_digit"]) }
        it { expect(result[:model_year]).to eq(row["model_year"]) }
      end
    end
  end
end

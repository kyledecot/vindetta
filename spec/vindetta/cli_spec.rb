require "spec_helper"

RSpec.describe Vindetta::CLI do
  describe ".run" do
    with_command "decode" do
      with_args [] do
        it { is_expected.to have_exit_code(1) }
      end

      with_args ["1G3AE37X9EW325440"] do
        it { is_expected.to have_exit_code(0) }
      end
    end

    with_command "validate" do
      with_args [] do
        it { is_expected.to have_exit_code(1) }
      end

      with_args ["1G3AE37X9EW325440"] do
        it { is_expected.to have_exit_code(0) }
      end
    end
  end
end

# frozen_string_literal: true

RSpec::Matchers.define :be_a_valid_vds do
  match { |vds| Vindetta::Validator.new(Vindetta::Standard::ISO3779).vds(vds) }
end

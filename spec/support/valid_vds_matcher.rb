RSpec::Matchers.define :be_a_valid_vds do
  match { |vds| Vindetta::Validator.vds(vds) }
end

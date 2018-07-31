RSpec::Matchers.define :be_a_valid_vis do
  match { |vis| Vindetta::Validator.new(Vindetta::Standard::ISO3779).vis(vis) }
end

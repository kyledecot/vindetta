RSpec::Matchers.define :be_a_valid_vis do
  match { |vis| Vindetta::Validator.vis(vis) }
end

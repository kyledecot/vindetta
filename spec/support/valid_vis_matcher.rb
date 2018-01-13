RSpec::Matchers.define :be_a_valid_vis do
  match do |actual|
    return false unless actual.length == Vindetta::VIS_LENGTH

    true
  end
end

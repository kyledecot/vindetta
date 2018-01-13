RSpec::Matchers.define :be_a_valid_vds do
  match do |actual|
    return false unless actual.length == Vindetta::VDS_LENGTH

    true
  end
end

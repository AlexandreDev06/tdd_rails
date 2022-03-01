RSpec::Matchers.define :be_a_multiple_of do |expected|
  #expected == 3
  #actual == subject == 18
  match do |actual| # matcher que foi criado manualmente
    actual % expected == 0
  end

  failure_message do |actual| # mensagem de erro caso o metodo retorne erro
    "expected that #{actual} would be a multiple of #{expected}"
  end

  description do
    "be a multiple of #{expected}"
  end
end

describe 18,'Custom Matcher' do
  it { is_expected.to be_a_multiple_of(3) }
end
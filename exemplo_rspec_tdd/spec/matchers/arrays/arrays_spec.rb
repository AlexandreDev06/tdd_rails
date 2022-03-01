RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1,2,3]), 'array', type: :collection do
  it '#include' do
    expect(subject).to include(2) # Contem o elemento dentro do array
    expect(subject).to include(2,1)
  end

  it { expect(subject).to exclude(4) }

  it '#contain_exactly', :slow do # com a tag slow é possível remover teste para não executarem, ex: ~slow
    expect(subject).to contain_exactly(3,1,2) # Contem o array exato, mas não precisa estar na ordem
  end

  it '#match_array' do
    expect(subject).to match_array([1,2,3])# Deve ser exatamente igual, até a ordem
  end
end
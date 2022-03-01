describe 'Matchers predicados' do # qualquer metodos predicaodo (nil?) pode ser alterado e colocado um be_ na frente
  it 'be_odd' do
    expect(1).to be_odd
  end

  it 'be_even' do
    expect(2).to be_even
  end

  it 'be_nil' do
    x = nil
    expect(x).to be_nil
  end
end
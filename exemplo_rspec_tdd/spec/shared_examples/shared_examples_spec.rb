require 'pessoa'
shared_examples 'status' do |sentimento|
  it "#{sentimento}" do
    pessoa.send("#{sentimento}!")
    expect(pessoa.status).to eq("Sentindo-se #{sentimento.capitalize}!")
  end
end

describe 'Pessoa' do
  subject(:pessoa) { Pessoa.new }
  
  it_behaves_like 'status', :feliz
  it_behaves_like 'status', :triste
  it_behaves_like 'status', :contente

  # include_examples, it_behaves_like e it_should_behave_like, fazem a mesmas funções
  # apenas mudam os nome para poder se encaixar no contexto do teste
  # E include_examples não cria titulo
  # it 'feliz!' do
  #   pessoa.feliz!
  #   expect(pessoa.status).to eq('Sentindo-se Feliz!')
  # end

  # it 'triste!' do
  #   pessoa.triste!
  #   expect(pessoa.status).to eq('Sentindo-se Triste!')
  # end

  # it 'contente!' do
  #   pessoa.contente!
  #   expect(pessoa.status).to eq('Sentindo-se Contente!')
  # end
end
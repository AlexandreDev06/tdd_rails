require 'pessoa'

describe 'Atributos' do

  # before(:each) do
  #   @pessoa = Pessoa.new
  #   puts '>>>>>>>>>> Antes de cada teste'
  # end

  # after(:example) do
  #   @pessoa.nome = 'Sem nome'
  #   puts "DEPOIS >>>>>> #{@pessoa.inspect}"
  # end

  around(:each) do |teste| # roda o antes e depois do teste
    @pessoa = Pessoa.new
    puts '>>>>>>>>>> Antes de cada teste'

    teste.run # roda o teste

    @pessoa.nome = 'Sem nome'
    puts "DEPOIS >>>>>> #{@pessoa.inspect}"
  end

  it 'have_attributes' do
    @pessoa.nome = 'Xande'
    @pessoa.idade = 20

    expect(@pessoa).to have_attributes(nome: start_with('X'), idade: (be >= 20))
  end

  it 'have_attributes' do
    @pessoa.nome = 'Xandola'
    @pessoa.idade = 25

    expect(@pessoa).to have_attributes(nome: start_with('X'), idade: (be >= 20))
  end
end
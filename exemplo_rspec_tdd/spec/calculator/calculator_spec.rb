require 'calculator'

describe Calculator, 'sobre Calculator' do
  subject(:calc) { Calculator.new() } # alterando a variavel subject para calc e instanciando Calculator

  context '#div' do
    it 'divide by 0' do
      expect{calc.div(3,0)}.to raise_error(ZeroDivisionError) # Para tratar erros, deve colocar a condição dentro de {} 
      expect{calc.div(3,0)}.to raise_error('divided by 0')
      expect{calc.div(3,0)}.to raise_error(ZeroDivisionError, 'divided by 0')
      expect{calc.div(3,0)}.to raise_error(/divided/)


    end
  end
  context '#sum' do
    it 'with positive numbers' do
      result = calc.sum(5,7) # usa a variavel que foi trocada de subject para calc
      expect(result).to eq(12)
      expect(result).not_to eq(11)
    end

    it 'with negative and postive numbers' do
      result = calc.sum(-5,7)
      expect(result).to eq(2) 
    end

    it 'with negative numbers' do
      result = calc.sum(-5,-7)
      expect(result).to eq(-12) 
    end

  end
  #### SUBJECT
    # subject é uma palavra chave do rspec para nos dar a classe instanciada, mas só funciona
    # quando a classe é setada no describe ou setada na variavel

    # subject implicito, oque vem da classe instanciada no describe
    #subject explicito, subject(:calc) { Calculator.new() }
end
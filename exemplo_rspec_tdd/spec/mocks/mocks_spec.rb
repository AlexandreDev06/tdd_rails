require 'student'
require 'course'

describe 'Mocks' do
  let(:student) {Student.new}
  it '#bar' do
    #setup
    student = Student.new

    #verify
    expect(student).to receive(:bar)

    #exercise
    student.bar
  end

  it 'args' do
    expect(student).to receive(:foo).with(123)
    student.foo(123)
  end

  it 'repetição' do
    expect(student).to receive(:foo).with(123).twice #twice é duas vezes
    student.foo(123)
    student.foo(123)
  end

  it 'retorno' do
    expect(student).to receive(:foo).with(123).and_return(true)
    puts student.foo(123)
  end
end
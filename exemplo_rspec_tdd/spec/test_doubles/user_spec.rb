describe 'Test Double' do
  it '--' do
    user = double('User') # Objeto falso
    # allow(user).to receive_messages(name: 'Xand', password: 'secret') # primeira forma de fazer
    allow(user).to receive(:name).and_return('Xand')
    allow(user).to receive(:password).and_return('secret')
    puts user.name
    puts user.password
  end

  it 'as_null_object' do # as_null_object ignora um erro caso aconteça dentro do objeto falso
    user = double('User').as_null_object # Objeto falso
    # allow(user).to receive_messages(name: 'Xand', password: 'secret') # primeira forma de fazer
    allow(user).to receive(:name).and_return('Xand')
    allow(user).to receive(:password).and_return('secret')
    puts user.name
    puts user.password
    user.abc
  end
end
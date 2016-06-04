require 'rspec' 
require_relative '../model/Factorizador'

describe 'Factorizador' do

	it 'deberia retornar 1 cuando factorizar(1)' do
    factorizador = Factorizador.new
    expect(factorizador.factorizar(1)).to eq 1
  end

  it 'deberia retornar 2 cuando factorizar(2)' do
    factorizador = Factorizador.new
    expect(factorizador.factorizar(2)).to eq 2
  end

  it 'deberia retornar 3 cuando factorizar(3)' do
    factorizador = Factorizador.new
    expect(factorizador.factorizar(3)).to eq 3
  end

end
require 'rspec' 
require_relative '../model/metadata/parametrizador'

describe 'Parametrizador' do

	it 'deberia retornar ["20","","",""] cuando alinearParametros("20")' do
    parametrizador = Parametrizador.new
    expect(parametrizador.alinear_parametros(["20"])).to eq ["20","","",""]
  end

  it 'deberia retornar ["20","quiet","",""] cuando alinearParametros("20","--format=quiet")' do
    parametrizador = Parametrizador.new
    expect(parametrizador.alinear_parametros(["20","--format=quiet"])).to eq ["20","quiet","",""]
  end

  it 'deberia retornar ["20","pretty","",""] cuando alinearParametros("20","--format=pretty")' do
    parametrizador = Parametrizador.new
    expect(parametrizador.alinear_parametros(["20","--format=pretty"])).to eq ["20","pretty","",""]
  end

  it 'deberia retornar ["20","pretty","asc",""] cuando alinearParametros("20","--format=pretty","--sort:asc")' do
    parametrizador = Parametrizador.new
    expect(parametrizador.alinear_parametros(["20","--format=pretty","--sort:asc"])).to eq ["20","pretty","asc",""]
  end

  it 'deberia retornar ["20","pretty","des",""] cuando alinearParametros("20","--format=pretty","--sort:des")' do
    parametrizador = Parametrizador.new
    expect(parametrizador.alinear_parametros(["20","--format=pretty","--sort:des"])).to eq ["20","pretty","des",""]
  end

  it 'deberia retornar ["10","pretty","asc",""] cuando alinearParametros("10","--sort:asc","--format=pretty")' do
    parametrizador = Parametrizador.new
    expect(parametrizador.alinear_parametros(["10","--sort:asc","--format=pretty"])).to eq ["10","pretty","asc",""]
  end

  it 'deberia retornar ["10","quiet","des",""] cuando alinearParametros("10","--sort:des","--format=quiet)' do
    parametrizador = Parametrizador.new
    expect(parametrizador.alinear_parametros(["10","--sort:des","--format=quiet"])).to eq ["10","quiet","des",""]
  end

  it 'deberia retornar ["10","quiet","","salida.txt"] cuando alinearParametros("10","--format=pretty","--output-file=salida.txt")' do
    parametrizador = Parametrizador.new
    expect(parametrizador.alinear_parametros(["10","--format=pretty","--output-file=salida.txt"])).to eq ["10","pretty","","salida.txt"]
  end 

  it 'deberia retornar ["10","quiet","","salida.txt"] cuando alinearParametros("10","--output-file=salida.txt","--format=pretty")' do
    parametrizador = Parametrizador.new
    expect(parametrizador.alinear_parametros(["10","--output-file=salida.txt","--format=pretty"])).to eq ["10","pretty","","salida.txt"]
  end 

  it 'deberia retornar ["10","quiet","asc","salida.txt"] cuando alinearParametros("10","--output-file=salida.txt","--format=pretty","--sort:asc")' do
    parametrizador = Parametrizador.new
    expect(parametrizador.alinear_parametros(["10","--output-file=salida.txt","--format=pretty","--sort:asc"])).to eq ["10","pretty","asc","salida.txt"]
  end 

  it 'deberia retornar ["10","quiet","asc","salida.txt"] cuando alinearParametros("10","--output-file=salida.txt","--sort:asc","--format=pretty")' do
    parametrizador = Parametrizador.new
    expect(parametrizador.alinear_parametros(["10","--output-file=salida.txt","--sort:asc","--format=pretty"])).to eq ["10","pretty","asc","salida.txt"]
  end 

  it 'deberia retornar ["10","quiet","asc","salida.txt"] cuando alinearParametros("10","--sort:asc","--format=pretty","--output-file=salida.txt")' do
    parametrizador = Parametrizador.new
    expect(parametrizador.alinear_parametros(["10","--sort:asc","--format=pretty","--output-file=salida.txt"])).to eq ["10","pretty","asc","salida.txt"]
  end 
end
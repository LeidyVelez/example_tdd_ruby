
require 'sinatra'
require_relative 'lib/Ahorcado'

configure do
  enable :sessions
end

get '/' do
	mostrarTitulo
	erb :inicio
end

get '/comenzarJuego' do	
	palabra= params["palabra"]
	ahorcado= Ahorcado.new
	@mensaje= ahorcado.longitudPalabra(palabra)
	@numeroIntentos = 5
	session["numeroIntentos"] = @numeroIntentos
	mostrarTitulo		
	if @mensaje=="La palabra debe tener mas de 4  y menos que 11 carateres"
	  return erb :inicio
	else
	 session["palabraAadivinar"] = palabra
	 return erb :comenzarJuego
	end		

end


def mostrarTitulo
	session["titulo"]="Ahorcado 3.0"
	@titulo=session["titulo"]
end


get '/validarLetra' do
	@numeroIntentos = session["numeroIntentos"]
	mostrarTitulo

	palabra= session["palabraAadivinar"]
	
	letra = params["letra"]
	ahorcado= Ahorcado.new
	@mensaje= ahorcado.validarLetra(palabra,letra).upcase
	puts "RESPUESTA: (" + @mensaje +") " + palabra

 

	erb :comenzarJuego
end

 

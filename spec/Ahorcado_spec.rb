# RSpec
require_relative  '../lib/Ahorcado'
describe Ahorcado do
	it "Deberia mostrar las 6 lineas de la palabra cuando ingrese Carros" do
		ahorcado= Ahorcado.new
		ahorcado.longitudPalabra("Carros").should == "_ _ _ _ _ _ "
	end 
	it "Deberia mostrar el mensaje de error, cuando ingrese Casa" do
		ahorcado= Ahorcado.new
		ahorcado.longitudPalabra("Casa").should == "La palabra debe tener mas de 4  y menos que 11 carateres"
	end

	it "Si la palabra es Carros y se ingresa la letra 'p', debe mostrar Numero de intentos 4" do
		ahorcado= Ahorcado.new
		ahorcado.descontarIntentos().should == 4
	end	

	it "si le envio carro como palabra cuando ingrese letra c, debe mostrar C _ _ _ _ _ " do
		ahorcado=Ahorcado.new 
		ahorcado.validarLetra("Carros", "o").should=="_ _ _ _ O _ "
	end
end

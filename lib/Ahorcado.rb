#Test commit
class Ahorcado
def initialize
		@mensajeFalla="La palabra debe tener mas de 4  y menos que 11 carateres"
		@lineas=""
		@numeroIntentos = 5
	end

	def longitudPalabra(palabra)
		tam = palabra.length
		if tam < 5 or tam > 10
	  		return @mensajeFalla
		else
			for i in 0..tam-1
			    @lineas  +="_ " 
			end 
			return @lineas
		end 
	end

	def validarLetra(palabra,letra)
	 
		tam = palabra.length
		palabra.upcase!
		letra.upcase!
		
		array=	palabra.chars.to_a
		respuesta=""
		for j in 0..tam -1
			if letra==array[j]
				respuesta +=letra +" "
			else			
				respuesta +="_ "
			end
		end
		return respuesta
	end


	def descontarIntentos()
		@numeroIntentos = @numeroIntentos -1
	 	return @numeroIntentos
	end

end

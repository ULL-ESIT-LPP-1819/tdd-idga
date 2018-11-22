class Data

	attr_reader :altura, :peso, :edad, :sexo, :cintura, :cadera
	
	def initialize(altura, peso, edad, sexo, cintura, cadera)
		@altura = altura
	        @peso = peso
		@edad = edad
		@sexo = sexo
		@cintura = cintura
		@cadera = cadera
	end

	def imc
		(peso/(altura**2))*10**4
	end


	def resultado
		x=self.imc.round(1)

		if x < 18.5
			return "Bajo peso"
		elsif x >= 18.5 && x <= 24.9
			return "Peso adecuado"
		elsif x > 24.9 && x <= 29.9
			return "Sobrepeso"
		elsif x > 29.9 && x <= 34.9
		        return "Obesidad grado 1"
		elsif x > 34.9 && x <= 39.9
			return "Obesidad grado 2"
		elsif x >= 40
	        	return "Obesidad grado 3"
		end
	end

	def grasa_c
	
		if @sexo == 0
			1.2 * self.imc + 0.23*@edad - 10.8 - 5.4
		else @sexo == 1
			1.2 * self.imc + 0.23*@edad - 5.4
		end
	end
			  

	def rcc
		
		x=cintura/cadera
		if @sexo == 0
			if x <= 0.75
				return "Riesgo bajo"
			elsif x > 0.75 && x < 0.82
				return "Riesgo moderado"
			elsif x >= 0.82
			       	return "Riesgo alto"
			end
		else @sexo == 1
			if x <= 0.88
				 return "Riesgo bajo"
			elsif x >= 0.89 && x <= 0.95
			         return "Riesgo moderado"
			elsif x >= 0.96 && x <= 1.01
			         return "Riesgo alto"
			elsif x > 1.01
			         return "Riesgo muy alto"
			end
	        end
	end
end

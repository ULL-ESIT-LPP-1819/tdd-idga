class Person
	attr_accessor :name
	
	# Inclusión del módulo comparable
	include Comparable
	
	# Constructor
	def initialize(n)
		@name = n
	end
	
	def <=>(other)
		self.name <=> other.name
	end
	
	# Método to_s
	def to_s
		"#{name}"
	end
end

# Clase derivada de Person
class Patient < Person

	attr_accessor :data
	
	# Constructor
	def initialize(n,data)
		@name = n
		@data = data
	end

	# Método para obtener los datos
	def get_data
		return @data
	end
	
	# Método to_s
	def to_s
		a+="#{name}"
		a+=name.to_s
	end

	def peso_teorico_ideal
		     (data.altura-150)*0.75+50
	end

	def gasto_energetico_basal
		    if @data.sexo == 0
			    10*data.peso+6.25*data.altura-5*data.edad-161
		    else
			    10*data.peso+6.25*data.altura-5*data.edad+5
		    end
	end

	def efecto_termogeno
		    self.gasto_energetico_basal*0.1
	end

	def factor_actividad
		    
		if @data.n_a == "Reposo"
			return 0.0
		elsif @data.n_a == "Actividad ligera"
			return 0.12
		elsif @data.n_a == "Actividad moderada"
			return 0.27
		elsif @data.n_a == "Actividad intensa"
			return 0.54
		end
	end

	def gasto_actividad_fisica
		    self.gasto_energetico_basal*self.factor_actividad
	end

	def gasto_energetico_total
		    self.gasto_energetico_basal+self.efecto_termogeno+self.gasto_actividad_fisica
	end
end

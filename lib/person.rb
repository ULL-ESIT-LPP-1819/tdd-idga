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
end

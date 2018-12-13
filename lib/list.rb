Node = Struct.new(:value, :next, :prev)

class List
	
	attr_accessor :head, :tail
	
	# Inclusión de los módulos Comparable y Enumerable
	include Comparable,Enumerable
	
	# Constructor
	def initialize()
		@head = nil
		@tail = nil
	end
	
	# Méotod para saber si la lista está vacía
	def empty
		@head.nil?
	end

	# Método para insertar en la lista
	def insert(tag)
		n = Node.new(tag, nil, nil)
		
		# Si la lista está vacía
		if self.empty
			n.next = n
			n.prev = n
			@head = n
			@tail = n
		# Si NO está vacía
		else
			n.prev = @tail
			n.next = nil
			@tail.next = n
			@tail = n
		end
	end
	
	# Método para extraer de la lista
	def pop
		# Si está vacía
		if @head == nil
			return nil
		# Si solo tiene 1 elemento
		elsif @tail == @head
			@tail = nil
			@head = nil
		# Si tiene más de 1 elemento
		else
			sw = @tail
			@tail = sw.prev
			@tail.next = nil
			return sw
		end
	end
	
	# Extracción por la cabeza
	def shift
		if self.empty
			return nil
		else
			if @tail == @head
				@tail = nil
				@head = nil
			else   	
				@head = @head.next
				return @head 
			end
		 end	
	end
	
	# Método para obtener el tamaño de la lista
	def size
		sz = 0
		n = @head
		while !(n.nil?)
			n = n.next
			sz += 1
		end
		return sz
	end
	
	# Método para clasificar en función de la cantidad de sal
	def clasificar
		
		result = []
		aux1 = []
		aux2 = []
		n = @head
		
		while !(n.nil?)
			if n.value.sal < 6
				aux1.push(n)
			else
			    	aux2.push(n)
			end
			n = n.next
		end
		result.push(aux1)
		result.push(aux2)
	end
	
	# Método to_s
	def to_s
		n = @head
		while !(n.nil?)
			# puts n.value.nombre
			n = n.next
		end
	end
	
	# Método para clasificar en función del IMC
	def clasificar_imc

		resultado = []
		aux1 = []
		aux2= []
		n = @head
		
		while !(n.nil?)
			if n.value.data.imc < 30
				aux1.push(n.value.data.imc)
			else
				aux2.push(n.value.data.imc)
			end
			n=n.next
		end
	        resultado.push(aux1, aux2)
	end
	
	# Método para clasificar en función de los hidratos
	def clasificar_h
		
		lista = []
		n = @head
		
		while(!n.nil?)
			lista.push(n.value.hidratos)
			n = n.next
		end
		return lista
	end
	
	# Método para clasificar en funcion del peso
	def clasificar_peso
		
		lista=[]
		n=@head

		while(!n.nil?)
			lista.push(n.value.imc.round(1))
	
		n=n.next
		end
		return lista
	end

	def each 
		
		yield @head.value
		n = @head
		while(!n.nil?)
			yield n.value
			n=n.next
		end
	end
end

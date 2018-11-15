Node = Struct.new(:value, :next, :prev)

class List
	attr_accessor :head, :tail

	def initialize()
		@head = nil
		@tail = nil
	end
	
	def empty
		@head.nil?
	end


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

	def size
		sz = 0
		n = @head
		while !(n.nil?)
			n = n.next
			sz += 1
		end
		return sz
	end
end

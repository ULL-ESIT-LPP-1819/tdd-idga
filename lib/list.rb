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

end

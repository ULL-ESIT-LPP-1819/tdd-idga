class Person
	attr_accessor :name

	def initialize(n)
		@name = n
	end

	def to_s
		"#{name}"
	end
end

class Patient < Person

	attr_accessor :data

	def initialize(n,d)
		@name = n
		@data = d
	end

	def get_data
		return @data
	end

	def to_s
		a+="#{name}"
		a+=name.to_s
	end
end

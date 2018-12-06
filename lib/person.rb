class Person
	attr_accessor :name
	include Comparable

	def initialize(n)
		@name = n
	end

	def <=>(other)
		self.name <=> other.name
	end

	def to_s
		"#{name}"
	end
end

class Patient < Person

	attr_accessor :data

	def initialize(n,data)
		@name = n
		@data = data
	end

	def get_data
		return @data
	end

	def to_s
		a+="#{name}"
		a+=name.to_s
	end
end

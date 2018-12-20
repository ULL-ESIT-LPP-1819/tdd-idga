class Array
	
	# Método Burbuja
	def sort_for
		
		for i in (1..length - 1)
			for j in ((i+1)..length)
				if(self[i]>self[j])
				   aux = self[i]
				   self[i] = self[j]
				   self[j] = aux
				   break
				end
			end
		end

		return self
	end
end

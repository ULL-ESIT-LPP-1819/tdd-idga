require "prct06/version"

class Etiqueta
	
	# Inclusión del módulo Comparable
	include Comparable 
	
	attr_accessor :nombre, :valor_energ, :grasas, :grasas_s, :hidratos, :azucares, :proteinas, :sal, :grasas_m, :grasas_p, :poli_alc, :almidon, :fibra, :vitaminas, :minerales
	
	def <=> (other)
		valor_energ <=> other.valor_energ && self.calcularkcg<=>other.calcularkcg
	end
	
	def +(other)
		calcularkcg + other.calcularkcg
	end
		
	#Constructor
	def initialize(n, ve, g, gs, h, az, pr, sa, gm, gp, pa, al, fi, vi, mi)
		
		@nombre = n
		@valor_energ = ve
		@grasas = g
		@grasas_s = gs
		@hidratos = h
		@azucares = az
		@proteinas = pr
		@sal = sa

		@grasas_m = gm
		@grasas_p = gp
		@poli_alc = pa
		@almidon = al
		@fibra = fi
		@vitaminas = vi
		@minerales = mi
	end
	
	# Método para calcular kj/g
	def calcularkjg
		37*@grasas+37*@grasas_m+37*@grasas_p+17*@hidratos+10*@poli_alc+17*@almidon+8*@fibra+17*@proteinas+25*@sal
	end
	
	# Método para calcular kcal/g
	def calcularkcg
		9*@grasas+9*@grasas_m+9*@grasas_p+4*@hidratos+2.4*@poli_alc+4*@almidon+2*@fibra+4*@proteinas+6*@sal
	end
	
	# Método para calcular el índice de referencia
	def calcularir(ref)
		total = @valor_energ+@grasas+@grasas_s+@hidratos+@azucares+@proteinas+@sal+@grasas_m+@grasas_p+@poli_alc+@almidon+@fibra+@vitaminas+@minerales
		(ref*100)/total
	end
	# Método to_s
	def mostrar
	 
		puts "Nombre etiqueta: #{@nombre}"		        
		puts  "Valor energético: #{self.calcularkjg} kj\t / #{self.calcularkcg} kcal"
		puts  "Grasas: #{@grasas} g\t #{self.calcularir(@grasas)}%"
		puts  "Grasas saturadas: #{@grasas_s} g\t #{self.calcularir(@grasas_s)}%"
		puts  "Grasas monoinsaturadas: #{@grasas_m} g\t #{self.calcularir(@grasas_m)}%"
		puts  "Grasas poliinsaturadas: #{@grasas_p} g\t #{self.calcularir(@grasas_p)}%"
		puts  "Hidratos: #{@hidratos} g\t #{self.calcularir(@hidratos)}%"
		puts  "Azúcares: #{@azucares} g\t #{self.calcularir(@azucares)}%"
		puts  "Polialcoholes: #{@poli_alc} g\t #{self.calcularir(@poli_alc)}%"
		puts  "Almidon: #{@almidon} g\t #{self.calcularir(@almidon)}%"
		puts  "Fibra: #{@fibra} g\t #{self.calcularir(@fibra)}%"
		puts  "Proteínas: #{@proteinas} g\t #{self.calcularir(@proteinas)}%"
		puts  "Vitaminas: #{@vitaminas} g\t #{self.calcularir(@vitaminas)}%"
		puts  "Minerales: #{@minerales} g\t #{self.calcularir(@minerales)}%\n"
	end
end

require "prct06/version"

class Etiqueta
	attr_accessor :nombre, :valor_energ, :grasas, :grasas_s, :hidratos, :azucares, :proteinas, :sal, :grasas_m, :grasas_p, :poli_alc, :almidon, :fibra, :vitaminas, :minerales
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
	
	def calcularkjg
		37*@grasas+37*@grasas_m+37*@grasas_p+17*@hidratos+10*@poli_alc+17*@almidon+8*@fibra+17*@proteinas+25*@sal
	end
end 

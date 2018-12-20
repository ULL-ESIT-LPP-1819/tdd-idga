RSpec.describe Etiqueta do

	before :each do
		@ind1 = Patient.new("Juan", Datos.new(170,60,18,1,100,100,"Actividad intensa"))
		@ind2 = Patient.new("Pepe", Datos.new(160,58,16,1,97,98,"Actividad moderada"))
		@ind3 = Patient.new("Maria", Datos.new(190,80,24,0,89,97,"Actividad ligera"))
		@ind4 = Patient.new("Laura", Datos.new(178,67,19,0,67,65,"Reposo"))
		@ind5 = Patient.new("Julio", Datos.new(180,80,20,1,80,79,"Reposo"))


		@entrante = Etiqueta.new("Queso",50,23,14,3.8,10,20,19,0,0,0,0,1,12,2.5)
		@principal1 = Etiqueta.new("Pescado",10,4,5,2,0,0,0,0,1,3,4,2,5,4)
		@principal2 = Etiqueta.new("Carne",35,10,20,56,78,10,5,6,7,4,0,0,0,1.2)
		@principal3 = Etiqueta.new("Sopa",25,67,56,43,23,0,12,98,0,0,1,2,5,7.8)
		@postre1 = Etiqueta.new("Natilla",50,0,23,3.4,5.6,2,0,0,0,0,5,14,7.6,3.2)
		@postre2 = Etiqueta.new("Tarta",100,90,24,0,0,98,78,67,45,23,12,1,4,3)

		@menu1 = List.new
		@menu2 = List.new
		@menu3 = List.new
		@menu4 = List.new
		@menu5 = List.new
		@menu6 = List.new
		@menu7 = List.new
		@menu8 = List.new
		@menu9 = List.new
		@menu10 = List.new

		@arraymenus = []
		@listind = List.new

		@lve1 = List.new
		@lve2 = List.new
		@lve3 = List.new
		@lve4 = List.new
		@lve5 = List.new

	end

	it "Pruebas menu's" do
		
		### Individuo 1 ###
		
		@menu1.insert(@entrante)
		@menu1.insert(@principal1)
		@menu1.insert(@postre1)
		
		@lve1.insert(@entrante.valor_energ)
		@lve1.insert(@principal1.valor_energ)
		@lve1.insert(@postre1.valor_energ)

		# Sumatorio de los valores energético
		ve_total = @lve1.reduce(:+)
		
		# Calculo de la idoneidad del menu
		expect(ve_total.between?(@ind1.gasto_energetico_total*0.90, @ind1.gasto_energetico_total*1.10)).to be false

		### Individuo 2 ###
		
		@menu2.insert(@entrante)
		@menu2.insert(@principal2)
		@menu2.insert(@postre1)
		
		@lve2.insert(@entrante.valor_energ)
		@lve2.insert(@principal2.valor_energ)
		@lve2.insert(@postre1.valor_energ)

		ve_total = @lve2.reduce(:+)
		expect(ve_total.between?(@ind2.gasto_energetico_total*0.90, @ind2.gasto_energetico_total*1.10)).to be false
		
		### Individuo 3 ###
		
		@menu3.insert(@entrante)
		@menu3.insert(@principal3)
		@menu3.insert(@postre1)

		@lve3.insert(@entrante.valor_energ)
		@lve3.insert(@principal3.valor_energ)
		@lve3.insert(@postre1.valor_energ)
		
		ve_total = @lve3.reduce(:+)
		expect(ve_total.between?(@ind3.gasto_energetico_total*0.90, @ind3.gasto_energetico_total*1.10)).to be false
		
		expect(@menu3.collect {|x|}).to eq([nil,nil,nil,nil])

		### Individuo 4 ###

		@menu4.insert(@entrante)
		@menu4.insert(@principal1)
		@menu4.insert(@postre2)
		
		@lve4.insert(@entrante.valor_energ)
		@lve4.insert(@principal1.valor_energ)
		@lve4.insert(@postre2.valor_energ)

		ve_total = @lve4.reduce(:+)
		expect(ve_total.between?(@ind4.gasto_energetico_total*0.90, @ind4.gasto_energetico_total*1.10)).to be false
		
		### Individuo 5 ###

		@menu5.insert(@entrante)
		@menu5.insert(@principal2)
		@menu5.insert(@postre2)
		
		@lve5.insert(@entrante.valor_energ)
		@lve5.insert(@principal2.valor_energ)
		@lve5.insert(@postre2.valor_energ)
		
		ve_total = @lve5.reduce(:+)
		expect(ve_total.between?(@ind5.gasto_energetico_total*0.90, @ind5.gasto_energetico_total*1.10)).to be false
	
		### Uso del método zip ###
		
		[@entrante,@principal3,@postre2].zip(@lve1)
	
	end	

	it "Comprobación de funciones" do

		expect(@ind1.peso_teorico_ideal).to eq(65.0)
		expect(@ind2.gasto_energetico_basal).to eq(1505.0)
		expect(@ind3.efecto_termogeno).to eq(170.65)
		expect(@ind4.factor_actividad).to eq(0.0)
		expect(@ind5.gasto_actividad_fisica).to eq(0.0)
		expect(@ind1.gasto_energetico_total).to eq(2587.1)
	end

	it "Prueba array de menus" do
		
		@menu1.insert(@entrante)
		@menu1.insert(@principal1)
		@menu1.insert(@postre)
	
		@arraymenus.push(@menu1.reduce(0){ |sum, x| sum+x.calcularkcg})

		#####

		@menu2.insert(@entrante)
		@menu2.insert(@principal2)
		@menu2.insert(@postre1)

		@arraymenus.push(@menu2.reduce(0){ |sum, x| sum+x.calcularkcg})
		
		#####

		@menu3.insert(@entrante)
		@menu3.insert(@principal3)
		@menu3.insert(@postre1)

		@arraymenus.push(@menu3.reduce(0){ |sum, x| sum+x.calcularkcg})
		
		####

		@menu4.insert(@entrante)
		@menu4.insert(@principal1)
		@menu4.insert(@postre2)

		@arraymenus.push(@menu4.reduce(0){ |sum, x| sum+x.calcularkcg})

		####
		
		@menu5.insert(@entrante)
		@menu5.insert(@principal2)
		@menu5.insert(@postre2)

		@arraymenus.push(@menu5.reduce(0){ |sum, x| sum+x.calcularkcg})

		####
		
		@menu6.insert(@entrante)
		@menu6.insert(@principal3)
		@menu6.insert(@postre2)

		@arraymenus.push(@menu6.reduce(0){ |sum, x| sum+x.calcularkcg})

		####
   		
		@menu7.insert(@entrante)
		@menu7.insert(@principal1)
		@menu7.insert(@postre2)

		@arraymenus.push(@menu7.reduce(0){ |sum, x| sum+x.calcularkcg})

		####

		@menu8.insert(@entrante)
		@menu8.insert(@principal2)
		@menu8.insert(@postre1)
		
		@arraymenus.push(@menu8.reduce(0){ |sum, x| sum+x.calcularkcg})
		
		####

		@menu9.insert(@entrante)
		@menu9.insert(@principal3)
		@menu9.insert(@postre2)

		@arraymenus.push(@menu9.reduce(0){ |sum, x| sum+x.calcularkcg})
		
		####

		@menu10.insert(@entrante)
		@menu10.insert(@principal2)
		@menu10.insert(@postre2)
	        
		@arraymenus.push(@menu10.reduce(0){ |sum, x| sum+x.calcularkcg})

		### Pruebas de ordenacion ###
		
		expect(@arraymenus.sort_for).to eq([])
		#expect(@arraymenus.sort_each).to eq([])
		expect(@arraymenus.sort).to eq([])

		puts Benchmark.measure{
			      expect(@arraymenus.sort_for).to eq([])
		}
		#puts Benchmark.measure {
		#	      expect(@arraymenus.sort_each).to eq([])
		#}
		puts Benchmark.measure {
			      expect(@arraymenus.sort).to eq([])
		}
	end

	it "Prueba lista individuos" do

		@listind.insert(@ind1)
		@listind.insert(@ind2)
		@listind.insert(@ind3)
		@listind.insert(@ind4)
		@listind.insert(@ind5)
		@listind.insert(@ind1)
		@listind.insert(@ind2)
		@listind.insert(@ind3)
		@listind.insert(@ind4)
		@listind.insert(@ind5)

		### Pruebas de ordenacion ###
		
		expect(@listind.sort_for).to eq([])
		expect(@listind.sort_each).to eq([])
		expect(@listind.sort).to eq([])
		
		puts Benchmark.measure{
			expect(@listind.sort_for).to eq([])
		}
		#puts Benchmark.measure{
		#	expect(@listind.sort_each.to eq([])
		#}
		puts Benchmark.measure{
			expect(@listind.sort).to eq([])
		}
	end

	it "Prueba ordenar lista" do
			
		expect(@arraymenus.sort_for).to eq([a,b,c])
		#expect(@arraymenus.sort_each).to eq([a,b,c])
		expect(@arraymenus.sort).to eq([a,b,c])
	end
end

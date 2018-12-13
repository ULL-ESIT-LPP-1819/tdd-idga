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

	end

	it "Creación de menu's" do

		@menu1.insert(@entrante)
		@menu1.insert(@principal1)
		@menu1.insert(@postre1)

		@menu2.insert(@entrante)
		@menu2.insert(@principal2)
		@menu2.insert(@postre1)

		@menu3.insert(@entrante)
		@menu3.insert(@principal3)
		@menu3.insert(@postre1)

		@menu4.insert(@entrante)
		@menu4.insert(@principal1)
		@menu4.insert(@postre2)

		@menu5.insert(@entrante)
		@menu5.insert(@principal2)
		@menu5.insert(@postre2)

		expect(@menu3.collect {|x|}).to eq([nil,nil,nil,nil])
	end	

	it "Comprobación de funciones" do

		expect(@ind1.peso_teorico_ideal).to eq(0)
		expect(@ind2.gasto_energetico_basal).to eq(0)
		expect(@ind3.efecto_termogeno).to eq(0)
		expect(@ind4.factor_actividad).to eq(0)
		expect(@ind5.gasto_actividad_fisica).to eq(0)
		expect(@ind1.gasto_energetico_total).to eq(0)
	end
end

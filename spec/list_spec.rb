RSpec.describe Etiqueta do

	before :each do
		@et1 = Etiqueta.new("Platano",110,15,0,0,0,56,4,0,1,9,8,3,1.5,3)
		@et2 = Etiqueta.new("Gofio",40,30,25,2.3,56,0,0,0,0,0,3,3,4.5,7)
		@et3 = Etiqueta.new("Higo",80,34,67,0,1,3,2.1,5,6,4,2,1,7.8,0)

		@l = List.new()
	end

	it "Inserción correcta" do
		expect(@l.empty).to be true
		expect(@l.insert(@et1)).equal?(Node)
		expect(@l.empty).to be false
		expect(@l.insert(@et2)).equal?(Node)
		expect(@l.empty).to be false
	end


end

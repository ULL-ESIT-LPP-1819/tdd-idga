RSpec.describe Etiqueta do

	before :each do
		@et1 = Etiqueta.new("Platano",110,15,0,0,0,56,4,0,1,9,8,3,1.5,3)
		@et2 = Etiqueta.new("Gofio",40,30,25,2.3,56,0,10,0,0,0,3,3,4.5,7)
		@et3 = Etiqueta.new("Higo",80,34,67,0,1,3,2,5,6,4,2,1,7.8,0)
		@et4 = Etiqueta.new("Manzana",67,23,56,0,0,0,7,0,3,3,2,1,7,6.5)
		@et5 = Etiqueta.new("Pera",32,23.4,5,10,11,4,5,3.4,6,56,32,12,3,0)
		
		# @n1 = Node.new(et1,nil,nil)
		# @n2 = Node.new(et2,nil,nil)
		# @n3 = Node.new(et3,nil,nil)
		# @n4 = Node.new(et4,nil,nil)
		# @n5 = Node.new(et5,nil,nil)
		
		@l = List.new()
	end

	it "Inserción correcta" do
		expect(@l.empty).to be true
		expect(@l.insert(@et1)).equal?(Node)
		expect(@l.empty).to be false
		expect(@l.insert(@et2)).equal?(Node)
		expect(@l.empty).to be false
	end

	it "Pop correcto" do
		expect(@l.insert(@et1)).equal?(Node)
		expect(@l.empty).to be false
	       	expect(@l.pop).equal?(Node)
	     	expect(@l.empty).to be true
	end

	it "Shift correcto" do
		expect(@l.insert(@et1)).equal?(Node)
		expect(@l.empty).to be false
		expect(@l.shift).equal?(Node)
		expect(@l.empty).to be true
	end

	it "Size correcto" do
		expect(@l.empty).to be true
		expect(@l.insert(@et1)).equal?(Node)
		expect(@l.insert(@et2)).equal?(Node)
		expect(@l.insert(@et3)).equal?(Node)
		expect(@l.size).to eq(3)
	end
	
	it "Clasificar correcto" do
		expect(@l.insert(@et1)).equal?(Node)
		expect(@l.insert(@et2)).equal?(Node)
		expect(@l.insert(@et3)).equal?(Node)
		expect(@l.insert(@et4)).equal?(Node)
		expect(@l.insert(@et5)).equal?(Node)
		
		array = @l.clasificar
		# Array 0 contiene valores menores que 6
		expect(array[0].length).to eq(3)
		# Array 1 contiene valores mayores que 6
		expect(array[1].length).to eq(2)
	end

	it "to_s correcto" do
		 expect(@l.insert(@et1)).equal?(Node)
		 expect(@l.insert(@et2)).equal?(Node)
		 expect(@l.insert(@et3)).equal?(Node)
		 expect(@l.insert(@et4)).equal?(Node)
		 expect(@l.insert(@et5)).equal?(Node)

		 expect(@l.to_s).equal?(String)

		 expect(@l.size).to eq(5)
		 expect(@l.pop).equal?(Node)
		 expect(@l.size).to eq(4)
	end

	it "[Lista] Prueba 1" do
		@l.insert(@et1)
		@l.insert(@et2)
		@l.insert(@et3)
		@l.insert(@et4)
		@l.insert(@et5)
		expect(@l.clasificar_imc.select { |i| i.even?}).to eq([4, 2])
		#expect(@l.clasificar_imc.min).to eq(1)
		#expect(@l.clasificar_imc.max).to eq(5)
		#expect(@l.clasificar_imc.sort).to eq([1, 2, 3, 4, 5])
		#expect(@l.clasificar_imc.collect {|i| (i*i).round(2) }).to eq([1, 9, 25, 16, 4])
	end
end

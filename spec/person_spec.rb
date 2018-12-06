RSpec.describe Etiqueta do
	
	before :each do

		# Ejemplos para la lista
		@person1 = Patient.new("Pepito", Datos.new(175,70,15,1,100,110))
		@person2 = Patient.new("Marco", Datos.new(168,60,19,1,98,100))
		@person3 = Patient.new("Mario", Datos.new(168,60,19,1,98,100))
		@person4 = Patient.new("Lucia", Datos.new(180,67,21,0,96,100))
		@person5 = Patient.new("Manolo", Datos.new(178,80,16,1,90,80))

		# Persona que no es paciente
		@person6 = Person.new("Juan")

		@l = List.new()	
	end
	
	# Prueba de identidad (clase)
	it "Comprobar la clase del objeto" do
		expect(@person1).to be_a_kind_of(Person)
		expect(@person1).to be_a_kind_of(Patient)
	end

	# Prueba de identidad (jerarquia)
	it "Comprobar jerarquia" do
		expect(@person1.class).to eq(Patient)
		expect(@person1.class.superclass).to eq(Person)
		expect(@person1.class.ancestors.include? (Object)).to eq (true)
		expect(@person1.class.ancestors.include? (BasicObject)).to eq (true)	
	end
	
	# Prueba de clasificación
	it "Comprobar clasificación" do
		expect(@l.insert(@person1)).equal?(Node)
		expect(@l.insert(@person2)).equal?(Node)
		expect(@l.insert(@person3)).equal?(Node)
		expect(@l.insert(@person4)).equal?(Node)
		expect(@l.insert(@person5)).equal?(Node)
				        
		array = @l.clasificar_imc
		expect(array[0].length).to eq(5)
		expect(array[1].length).to eq(0)
	end

	### Pruebas comparación Persona ###
	
	it "[Persona] <" do
		expect(@person1 < @person2).to be false
      	end

  	it "[Persona] <=" do
    		expect(@person1 <= @person2).to be false
    	end

    	it "[Persona] ==" do
      		expect(@person2 == @person3).to be false
      	end

      	it "[Persona] >" do
        	expect(@person4 > @person2).to be false
        end

  	it "[Persona] >=" do
    		expect(@person1 >= @person4).to be true
    	end

    	it "[Persona] Between" do
      		expect(@person3.between?(@person1, @person4)).to be false
        end	
end

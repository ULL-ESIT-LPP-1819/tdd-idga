RSpec.describe Etiqueta do
	
	before :each do

		# Ejemplos para la lista
		@person1 = Patient.new("Pepito", Datos.new(175,70,15,1,100,110))
		@person2 = Patient.new("Maria", Datos.new(164,60,19,0,98,100))
		@person3 = Patient.new("Mario", Datos.new(168,50,24,1,90,91))
		@person4 = Patient.new("Lucia", Datos.new(180,67,21,0,96,100))
		@person5 = Patient.new("Manolo", Datos.new(176,70,16,1,90,80))

		# Persona que no es paciente
		@person6 = Person.new("Juan")

		@l = List.new()	
	end

	it "Comprobar la clase del objeto" do
		expect(@person1).to be_a_kind_of(Person)
		expect(@person1).to be_a_kind_of(Patient)
	end

	it "Comprobar jerarquia" do
		expect(@person1.class).to eq(Patient)
		expect(@person1.class.superclass).to eq(Person)
		expect(@person1.class.ancestors.include? (Object)).to eq (true)
		expect(@person1.class.ancestors.include? (BasicObject)).to eq (true)	
	end
end

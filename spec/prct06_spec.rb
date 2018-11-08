RSpec.describe Prct06 do
  it "has a version number" do
    expect(Prct06::VERSION).not_to be nil
  end
  
  describe Etiqueta do

	  before :each do
		  @et = Etiqueta.new("Ejemplo", 50, 0, 23, 3.4, 5.6, 2, 0, 0, 0, 0, 5, 14, 7.6, 3.2)
  	  end

	  it "Nombre correcto" do
		expect(@et.nombre).to eq("Ejemplo")
	  end

	  it "Valor energético correcto" do
		expect(@et.valor_energ).to eq(50)
	  end

	  it "Valor grasas correcto" do
		expect(@et.grasas).to eq(0)
	  end

	  it "Valor grasas saturadas correcto" do
		expect(@et.grasas_s).to eq(23)
	  end

	  it "Valor hidratos correcto" do
		expect(@et.hidratos).to eq(3.4)
	  end

	  it "Valor azucares correcto" do
		expect(@et.azucares).to eq(5.6)
	  end

	  it "Valor proteinas correcto" do
		expect(@et.proteinas).to eq(2)
	  end

	  it "Valor sal correcto" do
		expect(@et.sal).to eq(0)
	  end
  end
end

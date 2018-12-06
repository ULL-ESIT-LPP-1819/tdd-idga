RSpec.describe Prct06 do
  it "has a version number" do
    expect(Prct06::VERSION).not_to be nil
  end
  
  describe Etiqueta do

	  before :each do
		  @et = Etiqueta.new("Ejemplo", 50, 0, 23, 3.4, 5.6, 2, 0, 0, 0, 0, 5, 14, 7.6, 3.2)
  	  	  @et2 = Etiqueta.new("Ejemplo2",40,20,1,18,1,4,5,6,7,8,2,3,3.4,0)
		  @et3 = Etiqueta.new("Ejemplo3",10,4,5,2,0,0,0,0,1,3,4,2,5,4)
		  @et4 = Etiqueta.new("Ejemplo4",50,0,23,3.4,5.6,2,0,0,0,0,5,14,7.6,3.2)
	  end
	  
	  ########

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

	  it "Valor grasas monoinsaturadas correcto" do
		expect(@et.grasas_m).to eq (0)
	  end
		

	  it "Valor grasas poliinsaturadas correcto" do
		expect(@et.grasas_p).to eq(0)
	  end

	  it "Valor polialcoholes correcto" do
		expect(@et.poli_alc).to eq(0)
	  end

	  it "Valor almidon correcto" do
		expect(@et.almidon).to eq(5)
	  end

	  it "Valor fibra correcto" do
		expect(@et.fibra).to eq(14)
	  end

	  it "Valor vitaminas correcto" do
		expect(@et.vitaminas).to eq(7.6)
	  end

	  it "Valor minerales correcto" do
		expect(@et.minerales).to eq(3.2)
	  end

	  ########
	  
	  it "Calcular kJ/g" do
		expect(@et.calcularkjg).to eq(288.8)
	  end

	  it "Calcular kcal/g" do
		expect(@et.calcularkcg).to eq(69.6)
	  end

	  it "Calcular Ingesta Referencia" do
		expect(@et.calcularir(@et.azucares)).to eq(4.92091388400703)	  
	  end

	  ########
	  
	  it "Mostrar nutrientes" do
		  expect(@et.mostrar).to eq(nil)
	  end

	  ### Pruebas de comparación ###
	  
	  it "[Etiqueta] <" do
		expect(@et3 < @et).to be false
	  end

	  it "[Etiqueta] <=" do
		expect(@et3 <= @et).to be false
	  end

	  it "[Etiqueta] ==" do
		expect(@et == @et4).to be false
	  end

	  it "[Etiqueta] >" do
		expect(@et > @et3).to be false
	  end

	  it "[Etiqueta] >=" do
		expect(@et >= @et3).to be false
	  end

	  it "[Etiqueta] Between" do
		expect(@et3.between?(@et2, @et4)).to be true
	  end
  end
end

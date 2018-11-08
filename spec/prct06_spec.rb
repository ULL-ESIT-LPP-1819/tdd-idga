RSpec.describe Prct06 do
  it "has a version number" do
    expect(Prct06::VERSION).not_to be nil
  end
  
  describe Etiqueta do

	  before :each do
		@et = Etiqueta.new("Ejemplo", 50, 0, 23, 3.4, 5.6, 2, 0)
  	  end
end

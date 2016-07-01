require './lib/visualizar'

describe Visualizar do
  it "Visualizar tablero de 6x6" do
    tablero = [[[0,0],[0,0]],
              [[0,0],[0,0]]]
    visualizar = Visualizar.new
    resultado = visualizar.visualiza 6,6
    resultado.should == tablero
  end

end

require './lib/tablero'

describe Tablero do
  it "Visualizar tablero de 6x6" do
    tablero = "[[[1, 0], [1, 0]], [[2, 0], [2, 0]]]"
    visualizar = Tablero.new 2,2,0
    visualizar.ver.should == tablero
  end

end

require './lib/tablero'
describe Tablero do
  it "crear tablero de 6x6 con pares entonces matriz de 6x6 con pares del 1 al 18" do
    #arrange
    matriz = Tablero.new 6, 6, 2
    #act
    resultado = matriz.ver
    #assert
    resultado.should == "[[[1, 0], [1, 0], [2, 0], [2, 0], [3, 0], [3, 0]], [[4, 0], [4, 0], [5, 0], [5, 0], [6, 0], [6, 0]], [[7, 0], [7, 0], [8, 0], [8, 0], [9, 0], [9, 0]], [[10, 0], [10, 0], [11, 0], [11, 0], [12, 0], [12, 0]], [[13, 0], [13, 0], [14, 0], [14, 0], [15, 0], [15, 0]], [[16, 0], [16, 0], [17, 0], [17, 0], [18, 0], [18, 0]]]"
  end
end

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

  it "validar si los valores de la posicion 0,0 y la posicion 0,1 son inguales entonces mostrar verdadero" do
    #arrange
    matriz = Tablero.new 6, 6, 2
    #act
    resultado = matriz.validar 0,0,0,1
    #assert
    resultado.should == "TRUE"
  end
  it "validar si los valores de la posicion 0,0 y la posicion 0,2 no son inguales entonces mostrar falso" do
    #arrange
    matriz = Tablero.new 6, 6, 2
    #act
    resultado = matriz.validar 0,0,0,2
    #assert
    resultado.should == "FALSE"
  end
  it "en la posicion 0,0 y la posicion 0,1 el valor es par" do
    #arrange
    matriz = Tablero.new 6, 6, 2
    #act
    resultado = matriz.validar 0,0,0,1
    resultado1 = matriz.ver
    #assert
    resultado1.should == "[[[1, 1], [1, 1], [2, 0], [2, 0], [3, 0], [3, 0]], [[4, 0], [4, 0], [5, 0], [5, 0], [6, 0], [6, 0]], [[7, 0], [7, 0], [8, 0], [8, 0], [9, 0], [9, 0]], [[10, 0], [10, 0], [11, 0], [11, 0], [12, 0], [12, 0]], [[13, 0], [13, 0], [14, 0], [14, 0], [15, 0], [15, 0]], [[16, 0], [16, 0], [17, 0], [17, 0], [18, 0], [18, 0]]]"
  end
  it "validar si todos los pares son inguales entonces mostrar gane" do
    #arrange
    matriz = Tablero.new 2, 2, 2
    #act
    matriz.validar 0,0,0,1
    matriz.validar 1,0,1,1
    resultado = matriz.ganar
    #assert
    resultado.should == "GANE"
  end
end

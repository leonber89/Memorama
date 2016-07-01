class Tablero
  def initialize x, y, tipo
    @matriz = Array.new(x){Array.new(y,[0,0])}
    n = 1;
    counter = 1
    for i in 0..(x-1)
      for a in 0..(y-1)
        @matriz[i][a]=[n,0]
        if counter%2 == 0
          n += 1
        end
        counter += 1
      end
    end
    return @matriz
  end

  def ver
    @matriz.to_s
  end
end

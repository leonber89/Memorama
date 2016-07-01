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

  def validar x1,y1,x2,y2
    if @matriz[x1][y1] == @matriz[x2][y2]
      a=@matriz[x1][y1]
      a[1]=1
      @matriz[x1][y1]=a
      @matriz[x2][y2]=a
      return "TRUE"
    else
      return "FALSE"
    end
  end
end

class Tablero
  def initialize x, y, tipo, intentos
    @rows = x
    @columns = y
    @intentos=intentos
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
    #@matriz.shuffle!
    return @matriz
  end

  def ver
    @matriz.to_s
  end

  def rows
    @rows
  end

  def columns
    @columns
  end

  def intentos
    @intentos
  end


  def mostrarTabla
    htmlTable = "<table border=1>"
    for i in 0..(@rows-1)
      htmlTable += "<tr>"
      for j in 0..(@columns-1)
        a = @matriz[i][j]
        if a[1] == 1
          htmlTable += "<td style='padding:10px'>" + a[0].to_s + "</td>"
        else
          htmlTable += "<td style='padding:10px'>X</td>"
        end
      end
      htmlTable += "</tr>"
    end
    htmlTable += "</table>"
  end

  def mensaje
    if @intentos == 0
      "Perdiste!"
    end
  end

  def validar x1,y1,x2,y2
    #if @itentos > 0
      if @matriz[x1][y1] == @matriz[x2][y2]
        a=@matriz[x1][y1]
        a[1]=1
        @matriz[x1][y1]=a
        @matriz[x2][y2]=a
        return "TRUE"
      else
        @intentos -= 1
        return "FALSE"
      end
    end
  #end
end

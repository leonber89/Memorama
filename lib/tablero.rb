class Tablero
  def initialize x, y, tipo
    @rows = x
    @columns = y

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

  def rows
    @rows
  end

  def columns
    @columns
  end

  def mostrarTabla
    htmlTable = "<table border=1>"
    for i in 0..(@rows-1)
      htmlTable += "<tr>"
      for j in 0..(@columns-1)
        a = @matriz[i][j]
        if a[1] == 1
          htmlTable += "<td>" + a[0].to_s + "</td>"
        else
          htmlTable += "<td>X</td>"
        end
      end
      htmlTable += "</tr>"
    end
    htmlTable += "</table>"
  end
end

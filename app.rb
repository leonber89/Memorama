require 'sinatra'
require './lib/tablero'
enable :sessions

get '/' do
  erb :found
end

post '/inicia' do
  resultado = (params["rows"].to_i * params["columns"].to_i)%2
  if resultado == 0
    session["tablero"] = Tablero.new params["rows"].to_i, params["columns"].to_i,2,params["intentos"].to_i
    #session["rows"] = session["tablero"].rows
    #session["columns"] = session["tablero"].columns
    erb :juego
  else
    erb :found
  end

  end

post '/adivinar' do
  session["tablero"].validar params["x1"].to_i,params["y1"].to_i,params["x2"].to_i,params["y2"].to_i
  erb :juego
end

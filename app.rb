require 'sinatra'
require './lib/tablero'

enable :sessions

get '/' do
  erb :found
end

post '/inicia' do
  resultado = (params["rows"].to_i * params["columns"].to_i)%2
  if resultado == 0
    session["tablero"] = Tablero.new params["rows"].to_i, params["columns"].to_i,0
    session["rows"] = session["tablero"].rows
    session["columns"] = session["tablero"].columns
    erb :juego
  else
    erb :found
  end
end

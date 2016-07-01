require 'sinatra'
require './lib/tablero'
enable :sessions

get '/' do
  erb :found
end

post '/inicia' do
  session["dimension"]= params["tamano"].split ","
  session["tablero"]=Tablero.new session["dimension"][0].to_i,session["dimension"][1].to_i
  erb :juego
end


#

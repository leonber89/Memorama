require 'sinatra'

get '/' do
  erb :found
end

post '/iniciarJuego' do
  erb :juego
end

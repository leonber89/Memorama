require 'sinatra'

get '/' do
    erb :found
end

post '/inicia' do
  erb :juego
end

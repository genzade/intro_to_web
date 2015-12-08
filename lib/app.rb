require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "Secret page. Piss off!!"
end

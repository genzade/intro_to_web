require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "Secret page. Piss off!!"
end

get '/cat' do
  @rand_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
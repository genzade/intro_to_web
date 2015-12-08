require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "Secret page. Piss off!!"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-naming' do
  erb(:cat_naming)
end

#  Write a new get route that renders only the cat-naming form
#  Add a method attribute to your form element, with the value "post"
#  Change your /named-cat route to use post instead of get
#  Interact with your application
#  Observe the URL query string when you submit the form
#  Observe the printed params when you submit the form
#  Explain your observations to your pair partner.

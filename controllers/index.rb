get '/' do
  erb :index
end

get '/pizzas' do
  @pizzas = Pizza.all
  erb :all_pizzas
end

get '/blah' do
  # cannot read @pizzas
end
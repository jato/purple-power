# just some homepage
get '/' do
  erb :index
end

# list all pizzas
get '/pizzas' do
  @pizzas = Pizza.all
  erb :all_pizzas
end

# new pizza form
get '/pizzas/new' do
  erb :new_pizza
end

# add new pizza
# redirect back
post '/pizzas/create' do
  Pizza.create(params[:pizza_name])
  redirect '/pizzas'
end












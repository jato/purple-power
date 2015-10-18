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

# render a specific page for pizza
# if it doesn't exist, go back to list
get '/pizzas/:pizza_name' do
  if Pizza.exists?(params[:pizza_name])
    @pizza = params[:pizza_name]
    erb :pizza_page
  else
    redirect '/pizzas'
  end
end











get '/categories' do
  # @categories = BreweryDBAdapter.categories
  @categories = Category.all
  erb :"categories/index"
end

get '/categories/:id' do
  @category = Category.find(params[:id])
  erb :'categories/show'
end
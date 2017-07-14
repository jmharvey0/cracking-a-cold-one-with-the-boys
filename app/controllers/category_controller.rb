before do
  require_relative '../models/brewery_db_adapter'
end
get '/categories' do
  # brewery_db = BreweryDBAdapter.new(ENV['BREWERY_DB_ACCESS_TOKEN'])
  # @categories = brewery_db.categories
  @categories = Category.all
  erb :"categories/index"
end

get '/categories/:id' do
  # brewery_db = BreweryDBAdapter.new(ENV['BREWERY_DB_ACCESS_TOKEN'])
  # @category = brewery_db.category_find(params[:id])
  @category = Category.find(params[:id])
  erb :'categories/show'
end

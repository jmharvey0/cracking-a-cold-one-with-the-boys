before do
  require_relative '../models/brewery_db_adapter'
end
get '/categories' do
  p ENV['BREWERY_DB_ACCESS_TOKEN']
  p brewery_db_categories = BreweryDBAdapter.new(ENV['BREWERY_DB_ACCESS_TOKEN'])
  # @categories =
  @categories = Category.all
  erb :"categories/index"
end

get '/categories/:id' do
  @category = Category.find(params[:id])
  erb :'categories/show'
end
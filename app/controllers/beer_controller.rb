get '/beers' do
  erb :'beers/index'
end

get '/beers/:id' do
  require_relative '../models/brewery_db_adapter'
  brewery_db = BreweryDBAdapter.new()
  @beer = brewery_db.find_beer_by_id(params[:id])
  erb :'beers/show'
end

get '/styles' do
  @styles = Style.all
  erb :'styles/index'
end

get '/styles/:id' do
  require_relative '../models/brewery_db_adapter'
  @style = Style.find(params[:id])
  brewery_db = BreweryDBAdapter.new()
  @beers = brewery_db.beers(@style.id)
  erb :'styles/show'
end

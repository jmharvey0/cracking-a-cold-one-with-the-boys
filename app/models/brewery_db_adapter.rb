class BreweryDBAdapter
  include HTTParty
  base_uri "api.brewerydb.com/v2/"

  def initialize()
    @options = { query: { key: ENV['BREWERY_DB_ACCESS_TOKEN'] }}
  end

  def categories
    self.class.get("/categories", @options)['data'].map{|args| Category.create(name: args['name'])}
  end
  # unused method, change of plans
  def category_find(finder)
    response = self.class.get("/category/#{finder}", @options)['data']
    Category.new(id: response['id'], name: response['name'])
  end

  def styles
    self.class.get("/styles", @options)['data'].map{|args| Style.create(name: args['name'], description: args['description'], category_id: args['categoryId'])}
  end
  def beers(styleId)
    self.class.get("/beers", { query: { key: ENV['BREWERY_DB_ACCESS_TOKEN'], styleId: styleId, order: "random", randomCount: 10 }} )['data'].map { |args| Beer.new(database_id: args['id'], name: args['name'], abv: args['abv'], style_id: args['styleId']) }
  end
  def find_beer_by_id(database_id)
    beer_data = self.class.get("/beer/#{database_id}", @options)['data']
    Beer.new(database_id: beer_data['id'], name: beer_data['name'], abv: beer_data['abv'], style_id: beer_data['styleId'])
  end
end

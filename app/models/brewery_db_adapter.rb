class BreweryDBAdapter
  include HTTParty
  base_uri "api.brewerydb.com/v2/"

  def initialize(key)
    @options = { query: { key: key }}
  end

  def categories
    self.class.get("/categories", @options)['data'].map{|args| Category.new(id: args['id'], name: args['name'])}
  end
  def category_find(finder)
    response = self.class.get("/category/#{finder}", @options)['data']
    Category.new(id: response['id'], name: response['name'])
  end
end

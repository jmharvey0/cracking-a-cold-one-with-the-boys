class BreweryDBAdapter
  include HTTParty
  base_uri "api.brewerydb.com/v2/"

  def initialize(key)
    @options = { query: { key: key }}
  end

  def categories
    self.class.get("/categories", @options)
  end
end

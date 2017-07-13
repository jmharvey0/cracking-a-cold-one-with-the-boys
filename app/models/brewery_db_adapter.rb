class BreweryDBAdapter
  inclue HTTParty
  base_uri "api.brewerydb.com/v2/?#{ENV[BREWERY_DB_ACCESS_TOKEN]}"

  def initialize(service, page)
    @options = { query: { site: service, page: page }}
  end

  def categories
    self.class.get("/categories", @options)
  end
end

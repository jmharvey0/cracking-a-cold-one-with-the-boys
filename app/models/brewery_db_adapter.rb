class BreweryDBAdapter
  inclue HTTParty
  base_uri 'api.brewerydb.com/v2'

  def initialize(service, page)
    @options = { query: { site: service, page: page }}
  end
end
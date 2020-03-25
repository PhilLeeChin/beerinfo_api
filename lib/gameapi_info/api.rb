class API
  def self.get_listings
    #pa_url = "https://api.punkapi.com/v2/beers/"
    response = HTTParty.get('https://api.punkapi.com/v2/beers')
    binding.pry
    response
  end
end

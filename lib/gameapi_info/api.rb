# API class created to gather information from the punkapi website.
# This API is created to provide details on different types of beers
# For this app it will be pulling the first 10 beers
class API
  def self.get_listings
    #pa_url = "https://api.punkapi.com/v2/beers/"
    #stores the return data from the API in response
    response = HTTParty.get('https://api.punkapi.com/v2/beers/?page=1&per_page=10')
    #itterates through the data stored in response for each beer
    response.each do |beer|
      #assigns a new Beer class with the name of the beer, tagline, first_brewed, and the description
      new_beer = Beer.new(beer['name'], beer['tagline'], beer['first_brewed'], beer['description'])
      #binding.pry
    end
  end
end

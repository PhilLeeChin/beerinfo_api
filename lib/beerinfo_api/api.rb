# API class gathers information from the punkapi website.
# This API provides details on different types of beers
# For this app it will be pulling the first 15 beers
class API
  def self.get_listings
    #pa_url = "https://api.punkapi.com/v2/beers/" assigns the api url to a new variable
    #stores the return data from the API in the response variable
    response = HTTParty.get('https://api.punkapi.com/v2/beers/?page=1&per_page=15')
    #itterates through the data stored in response for each element of beer
    response.each do |beer|
      #creates a new Beer class with the name of the beer, tagline, first_brewed, and the description
      #assigns the new instance of the Beer class to the new_beer variable
      new_beer = Beer.new(beer['name'], beer['tagline'], beer['first_brewed'], beer['description'], beer['abv'])
      #binding.pry
    end
  end
end

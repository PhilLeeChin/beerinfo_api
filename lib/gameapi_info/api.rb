class API
  def self.get_listings
    gia_key = ENV["GAMEINFO_API_KEY"]
    gia_url = "https://api-v3.igdb.com/games/"
    binding.pry
    response = HTTParty.get(gia_url, :headers => {"user-key" => "#{gia_key}"})
    response
  end
end

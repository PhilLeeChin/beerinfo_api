class CLI
  def open
    self.welcome_message
    self.options_listing
  end

  def welcome_message
    puts "**************************************************"
    puts "**************************************************"
    puts "*****      Welcome to my beer info app       *****"
    sleep(2)
    puts "*****   Select from 1 of the options below   *****"
    puts "**************************************************"
    puts "**************************************************"
  end

  def options_listing
    #returns the listing based on the request
    API.get_listings
    binding.pry
  end


end

class CLI
  def open
    self.welcome_message
    self.beer_options
    self.beer_choices
    self.get_input
    self.beer_selection
  end

  def welcome_message
    puts "**************************************************"
    puts "**************************************************"
    puts "*****      Welcome to my beer info app       *****"
    sleep(1)
    puts "*****   Select from 1 of the options below   *****"
    puts "**************************************************"
    puts "**************************************************"
  end

  def beer_options
    #returns the listing based on the request
    API.get_listings
    self.display_beers
  end

  def display_beers
    #itterates through the api and return a numbered list of beers
    Beer.all.each.with_index(1) do |beer, dex|
      puts "#{dex}: #{beer.name}"
      #binding.pry
    end
  end

  def display_details
    #output beer information
    puts @beer.name
  end

  def beer_choices
    #takes user input converts to interger to match with index
    #
    user_input = gets.chomp.to_i
    if user_input > 0 && user_input < 11
      @beer = Beer.all[user_input - 1]
      self.display_details
    else
      puts "Invalid details"
      self.beer_choices
    end
  end

  def get_input
    #takes in a string input from users to display beers or to close app
    #if user inputs uppercase letter, will be converted to lowercase
    user_input = gets.chomp.downcase
    if user_input == 'back'
      self.beer_selection
    elsif user_input == 'exit'
      exit!
    else
      puts "Invalid details"
      self.get_input
    end
  end

  def beer_selection
    self.display_beers
    self.beer_choices
    self.get_input
  end
end

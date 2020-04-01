#Welcome to My CLI portion of my project, this part deals with the interaction of the users
#It is comprised of Instance methods
#calling on the objects created in the Beer class
class CLI
  #This method calls on on other methods, the bin/open.rb file calls on this method
  def open
    self.welcome_message
    self.beer_options
    self.beer_choices
    self.get_input
    self.beer_selection
  end

  #Creates a welcome screen for users
  def welcome_message
    puts "**************************************************"
    puts "**************************************************"
    puts "*****      Welcome to my Beer info app       *****"
    sleep(1)
    puts "*****   Find out unique information about    *****"
    puts "*****               Each Beer                *****"
    puts "**************************************************"
    puts "**************************************************"

  end

  def beer_options
    API.get_listings #returns the listing based on the request from the API
    self.display_beers #calls on the disp method to return the list of beers
  end

  def display_beers
    puts "--------------------------------------------------"
    puts "**************************************************"
    #itterates through the api and return a numbered list of beers
    Beer.all.each.with_index(1) do |beer, dex|
      puts "#{dex}: #{beer.name}"
      #binding.pry
    end
    puts "**************************************************"
    puts "--------------------------------------------------"
  end

  def display_details
    #output the information for the selected beer: the name, tagline, first brewed date, and description
    puts "**************************************************"
    puts "--------------------------------------------------"
    puts "Label: " + @beer.name
    puts "Tagline: " + @beer.tagline
    puts "Month and Year 1st Brewed: " + @beer.brew_date
    puts "Info: " + @beer.description
    puts "Alcohol level: " + @beer.abv.to_s + "%"
    #binding.pry
    puts "--------------------------------------------------"
    puts "**************************************************"
  end

  def beer_choices #instance method
    #takes user input and it converts to interger to match with index
    #if the user inputs a number that is not apart of the list or a letter it will ask the user to try again
    puts "Please select the number of your desired beer? "
    puts "--------------------------------------------------"
    #gets takes in the user_input, chomp removes the newline character, to_i turns the input into an interger
    user_input = gets.chomp.to_i
    puts "--------------------------------------------------"
    puts "**************************************************"
    system('clear')#clears the screen so that it does not get clustered with the return
    #condition to check if the user_input is greater than 0
    #and if it is less than 16
    if user_input > 0 && user_input < 16
      #calls on the class variable from the Beer class and assigns it to an instance variable
      @beer = Beer.all[user_input - 1]
      self.display_details
    else
      puts "Invalid input, please input a number from the list"
      self.beer_choices
    end
  end

  def get_input
    #takes in a string input from users to display beers or to close app
    #if user inputs uppercase letter, converts it to lowercase
    #if user inputs a number will return wrong input
    puts "--------------------------------------------------"
    puts "If you would like to make another selection input 'back'."
    puts "If you would like to close the app input 'exit'."
    puts "--------------------------------------------------"
    #gets takes in the user_input, chomp removes the newline character, downcase turns all upperase input into lowercase
    user_input = gets.chomp.downcase
    puts "--------------------------------------------------"
    puts "**************************************************"
    system('clear')
    if user_input == 'back'
      self.beer_selection
    elsif user_input == 'exit'
      puts "**************************************************"
      puts "--------------------------------------------------"
      puts "Thanks for Playing."
      puts "--------------------------------------------------"
      puts "**************************************************"
      exit!
    else
      puts "Wrong input, try again."
      self.get_input
    end
  end

  #this method calls on the display_beers, beer_choices, and the get_input
  #methods to create a clear flow od itteration for the app
  def beer_selection
    self.welcome_message
    self.display_beers
    self.beer_choices
    self.get_input
  end
end

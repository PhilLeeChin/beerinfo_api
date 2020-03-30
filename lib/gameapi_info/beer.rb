#This class initialize with 4 variables to store the data obtain from the API
class Beer
  #this attributes reads from the information
  attr_reader :name, :tagline, :brew_date, :description

  #class variable to store the data in a hash
  @@all = []

  def initialize(name, tagline, brew_date, description)
    @name = name
    @tagline = tagline
    @brew_date = brew_date
    @description = description
    @@all << self
  end

  #returns all data
  def self.all
    @@all
  end

end

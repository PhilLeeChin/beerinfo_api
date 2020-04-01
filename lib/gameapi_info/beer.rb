#This class initialize with 5 objects
class Beer
  #these attributes reads from the information
  attr_reader :name, :tagline, :brew_date, :description, :abv

  #class variable to store the data in a hash
  @@all = []

  #initialize the Beer class with 5 initial data values, and a class variable
  def initialize(name, tagline, brew_date, description, abv)
    @name = name
    @tagline = tagline
    @brew_date = brew_date
    @description = description
    @abv = abv
    @@all << self
  end

  #instance method that returns all data in the class variable
  def self.all
    @@all
  end

end

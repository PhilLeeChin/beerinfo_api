class Beer
  attr_reader :name, :tagline, :brew_date, :description

  @@all = []

  def initialize(name, tagline, brew_date, description)
    @name = name
    @tagline = tagline
    @brew_date = brew_date
    @description = description
    @@all << self
  end

  def self.all
    @@all
  end

end

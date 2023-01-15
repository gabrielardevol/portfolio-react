class Restaurant
  # TODO: add relevant accessors if necessary
  attr_reader :average_rating, :city

  def initialize(city, name)
    @city = city
    @name = name
    @average_rating = 0.0
    @rates = []
    # (NO) @restaurants << self
    # TODO: implement constructor with relevant instance variables
  end

  def rate(new_rate)
    @rates << new_rate
    @rates.each do |rate|
      @average_rating += (rate / @rates.size)
    end
    p @average_rating
  end

  # TODO: implement .filter_by_city and #rate methods
  def self.filter_by_city(restaurants, city)
    restaurants.select do |restaurant|
      restaurant.city == city
      p "hola"
    end
  end

  def self.test
    "hola"
  end
end

mcdonalds = Restaurant.new("Barcelona", "McDonalds")
tagliatella = Restaurant.new("Barcelona","Tagliatella")

#p mcdonalds
#p "********************"
#p tagliatella
#p "********************"
#p Restaurant.test

restaurants = [mcdonalds, tagliatella]
p restaurants
p mcdonalds.city
p Restaurant.filter_by_city(restaurants, "Barcelona")
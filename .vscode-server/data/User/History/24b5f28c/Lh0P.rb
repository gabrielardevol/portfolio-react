class Restaurant
  # TODO: add relevant accessors if necessary
  attr_reader :average_rating, :city, :name

  def initialize(city, name)
    @city = city
    @name = name
    @average_rating = 0.0
    @rates = []
    # (NO) @restaurants << self
    # TODO: implement constructor with relevant instance variables
  end

  def rate(new_rate)
    @rates << new_rate.to_f
    p "rates is #{@rates}"
    p "rates size is #{@rates.size}"
    p "average rating should be #{@rates.sum} / #{@rates.size} = #{@rates.sum / @rates.size}"
    @rates.each_with_index do |rate, index|
    p "rate #{index+1} is #{rate}"
    @average_rating = @rates.sum / @rates.size
    p "average rating is #{@average_rating}"
    end
  end

  # TODO: implement .filter_by_city and #rate methods
  def self.filter_by_city(restaurants, city)
    restaurants.select do |restaurant|
      restaurant.city == city
    end
  end

  def self.test
    "hola"
  end
end

mcdonalds = Restaurant.new("Bcn", "Mcdonalds")
tagliatella = Restaurant.new("NYC", "Tagliatella")
array = [1, 2, 3, 4]
def select_test
  array.select do |element|
    element = 2
  end
end
p array.select_test

class Recipe
  attr_accessor :name, :ingredients
  def initialize(name, ingredients)
    @name = name
    @ingredients = ingredients
  end

  def read
    string = ""
    ingredients.each do |key, value|
      string += "#{key}"
    end
    "#{@name}, #{@ingredients}"
  end
end

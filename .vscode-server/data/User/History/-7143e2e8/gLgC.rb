class Recipe
  attr_accessor :name, :ingredients
  def initialize(name, ingredients)
    @name = name
    @ingredients = ingredients
  end

  def read
    "#{@name}"
    ingredients.each do |key, value|
    "#{key}: #{value}g/ml"
end

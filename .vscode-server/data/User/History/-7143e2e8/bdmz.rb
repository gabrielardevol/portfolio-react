class Recipe
  attr_accessor :name, :ingredients
  def initialize(name, ingredients)
    @name = name
    @ingredients = ingredients
  end

  def read
    "#{@name}, #{@ingredients}"
  end
end

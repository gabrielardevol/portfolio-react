# let's do an ingredient
class Ingredient
  attr_accessor :name, :kcal, :carbohydrates, :fats, :protein

  def initialize(name, kcal, carbohydrates, fats, protein)
    @name = name
    @kcal = kcal
    @carbohydrates = carbohydrates
    @fats = fats
    @protein = protein
  end

  def read
    "#{@name} has #{@kcal} kcal,  #{@carbohydrates} carbohydrates,  #{@fats} fats,  #{@protein} protein"
  end

  def update_name(name)
    @name = name
  end

  def delete
  end
end

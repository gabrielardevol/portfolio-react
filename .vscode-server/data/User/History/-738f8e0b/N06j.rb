# let's do an ingredient
class Ingredient
  attr_accessor :name, :kcal, :carbohydrates, :fats, :protein

  def initialize(name, amount, kcal, carbohydrates, fats, protein)
    @name = name
    @kcal = kcal
    @carbohydrates = carbohydrates
    @fats = fats
    @protein = protein
    @amount = amount
  end

  def read
    "#{@name} has #{@kcal} kcal,  #{@carbohydrates} carbohydrates,  #{@fats} fats,  #{@protein} protein"
  end

  def delete
  end
end

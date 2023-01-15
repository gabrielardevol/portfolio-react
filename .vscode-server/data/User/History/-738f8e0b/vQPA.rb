# let's do an ingredient
class Ingredient
  def initialize(name, kcal, carbohydrates, fats, protein)
    @name = name
    @kcal = kcal
    @carbohydrates = carbohydrates
    @fats = fats
    @protein = protein
  end

  def read
    "#{@name} has #{@kcal} kcal"
  end

  def update
  end

  def delete
  end
end

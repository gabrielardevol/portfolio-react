require_relative "meal_repository"
require_relative "meal"

@@csv = ""

class MealsController
  def initialize
    @repository = MealRepository.new(@@csv)
  end

  def add
    meal = Meal.new(@@csv, attributes = {})
    @repository.create(meal)

  end

  def list
  end
end

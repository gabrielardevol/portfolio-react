require_relative "meal_repository"
require_relative "meal"

class MealsController
  def initialize
    @repository = MealRepository.new
  end

  def add
    meal = Meal.new
    @repository.create(meal)

  end

  def list
  end
end

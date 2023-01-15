require_relative "meal_repository"
require_relative "meal"


class MealsController
  @@csv = ""

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

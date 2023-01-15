require_relative "meal_repository"
require_relative "meal"


class MealsController

  def initialize(csv)
    @repository = MealRepository.new(csv)
    @csv = csv
  end

  def add
    meal = Meal.new(@csv, attributes = {})
    @repository.create(meal)

  end

  def list
  end
end

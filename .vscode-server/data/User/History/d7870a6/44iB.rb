require_relative "meal_repository"
require_relative "meal"


class MealsController

  def initialize(csv = "")
    @repository = MealRepository.new(csv)
    @csv = csv
  end

  def add(attributes)
    meal = Meal.new(attributes = {})
   # @repository.create(meal)

  end

  def list
  end
end

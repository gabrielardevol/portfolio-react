require_relative "../repositories/meal_repository.rb"
require_relative "../views/meal_view.rb"

class MealController
  def initialize(csv = "data/meals.csv")
    @repository = MealRepository.new(csv)
    @view = MealView.new
  end

  def add
    meal = Hash.new
    meal[:name] = @view.ask_for("name")
    meal[:price] = @view.ask_for("price").to_f
    @repository.create(meal)
    #ask view for name
    #ask view for price
    #store in a hash
    #send hash to repository to create Meal
  end

  def list
    @view.display_meals(@repository.all)
    #ask repo for @meals
    #send @meals to view to display properly
  end

  def delete
    index = @view.ask_for("index")
    @repository.delete(index)
  end
end

require_relative "../repositories/meal_repository.rb"
require_relative "../views/meal_view.rb"

class MealController
  def initialize(csv = "app/data/meals.csv") #s'inicialitza amb un repositori previament instanciat
    @repository = MealRepository.new(csv)
    @view = MealView.new
  end

  def add
    meal = {}
    meal[:name] = @view.ask_for("name")
    meal[:price] = @view.ask_for("price").to_f
    @repository.create(meal)
  end

  def list #aquest mètode el posa en privat, i el crida des d'un altre mètode "display". per què?
    @view.display_meals(@repository.all)
  end

  def delete
    list
    index = @view.ask_for("index")
    @repository.delete(index.to_i - 1)
  end

  def find
    id = @view.ask_for("id")
    @repository.find(id)
  end
end

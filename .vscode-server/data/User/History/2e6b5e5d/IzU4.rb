require_relative "../views/meal_view"

class MealController
  def initialize(repository) #s'inicialitza amb un repositori previament instanciat
    @repository = repository
    @view = MealView.new
  end

  def add
    meal = {}
    meal[:name] = @view.ask_for("name")
    meal[:price] = @view.ask_for("price").to_f
    @repository.create(meal)
  end

  def list #aquest mètode el posa en privat, i el crida des d'un altre mètode "display". per què?
    display
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

  private

  def display
    @view.display_meals(@repository.all)
  end
end

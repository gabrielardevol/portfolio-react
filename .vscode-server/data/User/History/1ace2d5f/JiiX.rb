require "csv"
require_relative "meals_controller"
csv_path = "meals.csv"
# controller = MealsController.new(csv_path)

# p controller.add({name: "hamburguesa", price: "3 euros"})
# p controller.add({name: "verdura", price: "2 euros"})

repository = MealRepository.new(csv_path)
meal = repository.create({})
meal2 = repository.create({})

p repository

# p meal = Meal.new({name: "nom", price: "3 euros"}, 1)
CSV.foreach(csv_path, headers: :first_row) do |row|
  p id: row['id']
end

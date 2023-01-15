require "csv"
require_relative "meals_controller"
csv_path = "meals.csv"
# controller = MealsController.new(csv_path)

# p controller.add({name: "hamburguesa", price: "3 euros"})
# p controller.add({name: "verdura", price: "2 euros"})

repository = MealRepository.new(csv_path)
meal = repository.create({id: 1, name: "hamburguesa", price: 2})
meal2 = repository.create({id: 2, name: "verdura", price: 3})
meal3 = repository.create({id: 3, name: "macarrons", price: 1})


p repository.meals

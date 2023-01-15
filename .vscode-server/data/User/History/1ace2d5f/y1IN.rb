require "csv"
require_relative "meals_controller"
csv_path = "meals.csv"
# controller = MealsController.new(csv_path)

# p controller.add({name: "hamburguesa", price: "3 euros"})
# p controller.add({name: "verdura", price: "2 euros"})

repository = MealRepository.new(csv_path)
meal = repository.create({id: 1, name: "hamburguesa", price: 2})
meal2 = repository.create({id: 2, name: "verdura", price: 3})

p repository.meals


CSV.open(csv_path, "wb") do |csv|
  csv << ["id", "name", "price"]
  repository.meals.each do |meal_hash|
    csv << [meal_hash.id, meal_hash.name, meal_hash.price]
  end
end


# CSV.foreach(csv_path, headers: :first_row) do |row|
#  p id: row['id']
#end

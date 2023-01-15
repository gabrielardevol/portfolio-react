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

CSV.open(@csv, "wb") do |csv|
  csv << ["id", "name", "price"]
  @meals.each do |meal_hash|
  csv << [meal_hash[:id], meal_hash[:name], meal_hash[:price]]
  end
end


CSV.foreach(csv_path, headers: :first_row) do |row|
  p id: row['id']
end

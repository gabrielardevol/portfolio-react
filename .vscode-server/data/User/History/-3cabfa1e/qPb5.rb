require_relative "ingredient.rb"

interface = nil
ingredient_array = []
puts "create an ingredient."
until interface == ""
  puts "input name"
  name = gets.chomp
  puts "input amount"
  amount = gets.chomp
  puts "input kcal"
  kcal = gets.chomp
  puts "input fats"
  fats = gets.chomp
  puts "input carbohydrates"
  carbohydrates = gets.chomp
  puts "input protein"
  protein = gets.chomp
  ingredient = Ingredient.new(name, amount, kcal, carbohydrates, fats, protein)
  p ingredient.read
  ingredient_array << ingredient.name
  p "you currently have #{ingredient_array.size} ingredients"
end
p hash
p ingredient_array

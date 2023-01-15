require_relative "ingredient.rb"

name = nil #first imput; ends the loop
ingredient_array = []
puts "create an ingredient."
until name == ""
  puts "input name"
  name = gets.chomp
  if name != ""
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
    end
  p "you currently have #{ingredient_array.size} ingredients"
end
p ingredient_array

require_relative "ingredient.rb"
require_relative "recipe.rb"

interface = nil
ingredient_array = []
puts "welcome to Food-track."
until interface == ""
  puts "Select an option: 'ingredient', 'recipe' (press enter to quit)"
  interface = gets.chomp

  if interface == "ingredient"
    #ingredient
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

  #recipe
  elsif interface == "recipe"
    p "let's write a recipe"
    hash = {}
    ingredient = nil
    puts "input ingredient (press enter if no more ingredients)"
    ingredient = gets.chomp
    if ingredient != ""
      puts "input amount"
      amount = gets.chomp
      hash[ingredient] = amount
    end
  end
end
p hash
p ingredient_array

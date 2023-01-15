require_relative "ingredient.rb"
require_relative "recipe.rb"

puts "welcome to Food-track."
until interface == ""
  puts "Select an option: 'ingredient', 'recipe' (press enter to quit)"
  interface = gets.chomp
  name = nil
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

  if interface == "recipe"
    #recipe
    hash = {}
    ingredient = nil
    until ingredient == ""
      puts "input ingredient"
      ingredient = gets.chomp
        if ingredient != ""
        puts "input amount"
        amount = gets.chomp
        hash[ingredient] = amount
        end
      end
    end
p hash
  end
end

require_relative "ingredient.rb"
require_relative "recipe.rb"

interface = gets.chomp
name = nil
until interface = "" do
  case interface
  when "ingredient"
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
  when "recipe"
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
    interface = gets.chomp
  end
p hash
end

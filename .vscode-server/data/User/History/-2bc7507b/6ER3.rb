require_relative "create_ingredient.rb"
require_relative "recipe.rb"

hash = {}
ingredient = nil
puts "let's write a recipe"
  until ingredient == "" do
    puts "input ingredient (press enter if no more ingredients)"
    ingredient = gets.chomp
    p ingredient
    if ingredient != ""
      puts "input amount"
      amount = gets.chomp
      hash[ingredient] = amount
      puts ingredient
      puts hash
      puts amount
    end
  end
hash

require_relative "create_ingredient.rb"
require_relative "recipe.rb"

hash = {}
ingredient = nil
puts "let's write a recipe"
puts "whats it's name?"
name = gets.chomp
  until ingredient == "" do
    puts "input ingredient (press enter if no more ingredients)"
    ingredient = gets.chomp
    if ingredient != ""
      puts "input amount"
      amount = gets.chomp
      hash[ingredient] = amount
    end
  end
puts hash
Recipe.new(hash)

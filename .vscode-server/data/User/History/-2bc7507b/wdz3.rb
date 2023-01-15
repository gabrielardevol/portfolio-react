require_relative "create_ingredient.rb"
require_relative "recipe.rb"

hash = {}
ingredient = nil
interaction = nil
puts "let's write a recipe"
until interaction == ""
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
  Recipe.new(hash, name)
  puts "write another recipee? Y/N"
  interaction = gets.chomp
end

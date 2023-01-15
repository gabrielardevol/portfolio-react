require_relative "ingredient.rb"
require_relative "recipe.rb"

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
p hash

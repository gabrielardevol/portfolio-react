require_relative "ingredient.rb"
require_relative "recipe.rb"

#ingredient
puts "input name"
puts "input amount"
puts "input kcal"
puts "input fats"
puts "input carbohydrates"
puts "input protein"


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

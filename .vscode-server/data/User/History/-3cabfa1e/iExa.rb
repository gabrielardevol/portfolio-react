require_relative "ingredient.rb"

interface = nil
ingredient_array = []
puts "create an ingredient."
until interface == ""
  puts "Select an option: 'ingredient', 'recipe' (press enter to quit)"
  interface = gets.chomp

  if interface == "ingredient"
    interface_ingredient

  elsif interface == "recipe"
    p "let's write a recipe"
    hash = {}
    ingredient = nil
    until ingredient == "" do
      puts "input ingredient (press enter if no more ingredients)"
      ingredient = gets.chomp
      p ingredient
    # if ingredient != ""
    #   puts "input amount"
    #   amount = gets.chomp
    #   hash[ingredient] = amount
    # end
    end
  end
end
p hash
p ingredient_array

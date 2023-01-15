require_relative "create_ingredient.rb"
require_relative "recipe.rb"

hash = {}
recipees = []
interaction = nil
puts "let's write a recipe"
until interaction == "N"
  ingredient = nil
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
  recipe = Recipe.new(name, hash)
  recipees << recipe
  puts "write another recipee? Y/N"
  interaction = gets.chomp
end

recipees.each do |recipe|
  print recipe
  print "****"
end

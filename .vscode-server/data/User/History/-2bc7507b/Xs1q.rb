require_relative "create_ingredient.rb"
require_relative "recipe.rb"

def create_recipe
  hash = {}
  recipees = []
  # interaction = nil
  puts "let's write a recipe"
  # until interaction == "N"
    ingredient = nil
    puts "whats it's name?"
    name = gets.chomp
    puts "add an ingredient"
      until ingredient == "" do
        ingredient = gets.chomp
        if ingredient != ""
          puts "input amount"
          amount = gets.chomp
          hash[ingredient] = amount
          puts "choose another ingredient or press \"q\""
        end
      end
    recipe = Recipe.new(name, hash)
    recipees << recipe
  #  puts "write another recipee? Y/N"
  # interaction = gets.chomp
  # end

  #recipees.each do |recipe|
    print "#{recipe.name}\n**********\n"
    print "#{recipe.read}\n**********\n"
  #end
end

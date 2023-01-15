require_relative "ingredient.rb"
ingredient_array = []
def create_ingredient
  name = nil #first imput; ends the looping
  puts "**********************"
  puts "create an ingredient."
  puts "**********************"

  until name == ""
    puts "input name (press enter to quit)"
    name = gets.chomp
    if name != ""
      puts "input amount (grams or mililiters)"
      amount = gets.chomp
      puts "input kcal"
      kcal = gets.chomp
      puts "input fats"
      fats = gets.chomp
      puts "input carbohydrates"
      carbohydrates = gets.chomp
      puts "input protein"
      protein = gets.chomp
      ingredient = Ingredient.new(name, amount, kcal, carbohydrates, fats, protein)
      puts "**********************"
      puts ingredient.read
      ingredient_array << ingredient.name
      puts "you currently have #{ingredient_array.size} ingredients. Add another one?"
      puts "**********************"
    end

  end
  puts "**********************"
  @ingredient_array = ingredient_array
  puts ingredient_array

end

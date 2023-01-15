class View
  def initialize
  end

  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name} - #{recipe.description}"
    end
  end

  def ask_user_for(word)
    puts "Whats the #{word} of the recipe?"
    word = gets.chomp
  end

  def ask_recipe_description
    puts "Tntroduce description"
    description = gets.chomp
  end

end

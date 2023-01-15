class View
  def initialize
  end

  def display_list(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name} - #{recipe.description}"
    end
  end

  def ask_user_for(word)
    puts "Whats the #{word} of the recipe?"
    gets.chomp
  end
end

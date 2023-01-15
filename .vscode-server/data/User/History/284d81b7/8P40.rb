class View
  def display_list(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name} - #{recipe.description}"
    end
  end

  def ask_user_for(word)
    puts "Whats the #{word} of the recipe?"
    gets.chomp
  end

  def ask_for_ingredient
    puts "Choose an ingredient to search recipes"
    ingredient = gets.chomp
    return ingredient
  end

  def display_scrap(list)
    list.each_with_index do |element, index|
  end
end

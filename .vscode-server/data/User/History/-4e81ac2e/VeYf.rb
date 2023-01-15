class View
  def initialize
  end

  def display_list(recipes)
    p recipes
  end

  def ask_recipe_name
    puts "Introduce name"
    name = gets.chomp
  end

  def ask_recipe_description
    puts "Tntroduce description"
    description = gets.chomp
  end

end

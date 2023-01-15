class View
  def initialize
  end

  def display(recipes)
    recipes.each do |recipe|
      puts "#{recipe.name} --- #{recipe.description}"
    end
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

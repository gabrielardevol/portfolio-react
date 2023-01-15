require_relative "cookbook"
require_relative "view"

class Controller
  # @csv_file_path = "lib/recipes.csv"

  def initialize(cookbook, view)
  @cookbook = cookbook
  @view = view
  end

  def list
    p @cookbook.all
  end

  def create
    p "Introduce name"
    name = gets.chomp
    p "introduce description"
    description = gets.chomp
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    p @cookbook.all
    index = gets.chomp.to_i
    @cookbook.remove_recipe(index)
    p @cookbook.all
  end
end

controller = Controller.new("cookbook")
p controller

require_relative "cookbook"
require_relative "view"

class Controller
  # @csv_file_path = "lib/recipes.csv"

  def initialize(cookbook)
  @cookbook = cookbook
  @view = View.new
  end

  def list
    display_list(@cookbook.all)

  end

  def create
    name = @view.ask_recipe_name
    description = @view.ask_recipe_description
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

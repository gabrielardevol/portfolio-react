require_relative "recipe"
require_relative "view"

class Controller
  # @csv_file_path = "lib/recipes.csv"

  def initialize(cookbook)
  @cookbook = cookbook
  @view = View.new
  end

  def list
    @view.display_list(@cookbook.all)
  end

  def create
    name = @view.ask_user_for("name")
    description = @view.ask_user_for("description")
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    @view.display_list(@cookbook.all)
    index = @view.ask_user_for("index")
    @cookbook.remove_recipe(index)
    @view.display_list(@cookbook.all)
  end
end

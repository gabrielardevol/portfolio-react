require_relative "view"
require_relative "recipe" # repository
require_relative "scrapper"

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    display_recipes # DRY
    # @view.display_list(@cookbook.all)
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
    display_recipes
  end

  def import
    ingredient = @view.ask_for_ingredient
    @scrapper.scrap(ingredient)
  end

  private

  def display_recipes
    # 1. Get recipes (repo)
    recipes = @cookbook.all
    # 2. Display recipes in the terminal (view)
    @view.display_list(recipes)
  end
end

require_relative "cookbook"
# require_relative "view"

class Controller
  # @csv_file_path = "lib/recipes.csv"

  def initialize(cookbook)
  @cookbook = cookbook
  end

  def list
    @cookbook.all
    p "list"

  end

  def create
    p "Introduce name"
    name = gets.chomp
    p "introduce description"
    description = gets.chomp
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
    p "create"
  end

  def destroy
    p "destroy"
  end
end

controller = Controller.new("cookbook")
p controller

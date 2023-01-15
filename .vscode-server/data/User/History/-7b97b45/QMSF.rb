require_relative "cookbook"
require_relative "view"

class Controller
  @csv_file_path = "lib/recipes.csv"

  def initialize(view, cookbook)
  @view = view
  @cookbook = cookbook
  end

  def list
  end

  def create
  end

  def destroy
  end
end

controller = Controller.new("cookbook")
p controller

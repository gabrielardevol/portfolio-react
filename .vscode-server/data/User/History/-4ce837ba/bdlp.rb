# el csv es crida desde recipe o desde cookbook?
require "csv"
require_relative "recipe"
class Cookbook
  attr_accessor :recipes

  def initialize(csv_file)
    @csv_file = csv_file
    @recipes = []
  end

  def all
    CSV.foreach(@csv_file) do |row|
      @recipes << row
    end
    p @recipes
    #CSV.foreach(@csv_file_path, headers: :first_row) do |row|
    #p row["First name"], row["Last name"], row["Instrument"]
    # end
  end

  def add_recipe(name, description)
   # name = recipe[0]
   # description = recipe[1]
   @recipes << Recipe.new(name, description)
   recipes = @recipes
   CSV.open(@csv_file, "wb") do |csv|
    recipes.each do |recipe|
    csv << recipe
    end
  end
  end

  def remove_recipe(recipe_index)
    @recipes.delete_at(recipe_index)
    CSV.open(@csv_file, "wb") do |csv|
      @recipes.each do |recipe|
      csv << recipe
      end
    end
  end

end

cb = Cookbook.new("lib/recipes.csv")

p "at first, recipes array is empty"
p cb.recipes
p "we add a recipe"
cb.add_recipe("1", "2")
p cb.recipes
p "we delete it and its empty again"

cb.remove_recipe(0)
p cb.recipes

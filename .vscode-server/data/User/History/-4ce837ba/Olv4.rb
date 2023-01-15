# el csv es crida desde recipe o desde cookbook?
require "csv"
require_relative "recipe"

class Cookbook
  attr_accessor :recipes

  def initialize(csv_file)
    # def initialize(csv_file)
    @csv_file = csv_file
    @recipes = []
    load_csv
  end

  def all
    @recipes
  end

  def add_recipe(recipe)
    @recipes << recipe
    save_to_csv(recipe)
  end

  def remove_recipe(index)
    @recipes.delete_at(index.to_i - 1)
    save_to_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file) do |row|
      @recipes << Recipe.new(row[0], row[1])
    end
  end

  def save_to_csv
  #  CSV.open(@csv_file) do |csv|
  #    csv << [Recipe.name, Recipe.description]
      #
   # end
  end
end

cb = Cookbook.new('lib/recipes.csv')
p cb
recipe = Recipe.new("hola", "hola")
p recipe
cb.add_recipe(recipe)
p cb
p recipe.name
p recipe.description

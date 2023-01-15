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
    save_to_csv
  end

  def remove_recipe(index)
    @recipes.delete_at(index.to_i - 1)
    # CSV.open(@csv_file, "wb") do |csv|
    # @recipes.each do |recipe|
    # csv << recipe
    # end
    # end
  end

  private

  def load_csv
    CSV.foreach(@csv_file) do |row|
      @recipes << Recipe.new(row[0], row[1])
    end
  end

  def save_to_csv
    CSV.open(@csv_file) do |csv|
      csv << [recipe.name, recipe.description]
    end
  end
end

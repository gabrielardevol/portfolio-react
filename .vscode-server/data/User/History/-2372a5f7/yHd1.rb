require "csv"

class Recipe
  attr_accessor :name, :description

  csv_file_path = "lib/recipes.csv"

  def initialize(name, description)
    @name = name
    @description = description
    @csv_file_path = csv_file_path
    # la recepta es guardaria des d'aqui?
    # CSV.open(@@csv_file_path, "wb") do |csv|
    #  csv << [name, description]
    #end
    p self
  end

  def save(csv_file_path)
    # CSV.open(@csv_file_path)
    "save"
    p @csv_file_path
  end
end

require "csv"

class Recipe
  attr_accessor :name, :description

  @csv_file_path = "lib/recipes.csv"

  def initialize(name, description)
    @name = name
    @description = description
    # la recepta es guardaria des d'aqui?
    # CSV.open(@@csv_file_path, "wb") do |csv|
    #  csv << [name, description]
    #end
    p self
  end

  def save
    CSV.open("lib/recipes.csv", "wb") do |csv|
      csv << [@name, @description]
    end
  end
end

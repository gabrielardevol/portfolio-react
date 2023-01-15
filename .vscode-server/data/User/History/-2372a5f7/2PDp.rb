require "csv"

class Recipe
  attr_accessor :name, :description

  def initialize(name, description)
    @name = name
    @description = description
    self.save
    # la recepta es guardaria des d'aqui?
    #CSV.open(@@csv_file_path, "wb") do |csv|
    #  csv << [name, description]
    #end
  end

  def self.save
    CSV.open(@@csv_file_path)
  end
end

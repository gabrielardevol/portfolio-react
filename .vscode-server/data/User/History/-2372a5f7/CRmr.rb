csv_file_path = "lib/beatles.csv"


class Recipe
  attr_accessor :name, :description

  def initialize(name, description)
    @name = name
    @description = description
    # la recepta es guardaria des d'aqui?
    require "csv"

filepath = "data/beatles.csv"

CSV.open(filepath, "wb") do |csv|
  csv << ["First Name", "Last Name", "Instrument"]
  csv << ["John", "Lennon", "Guitar"]
  csv << ["Paul", "McCartney", "Bass Guitar"]
  # ...
end
  end
end

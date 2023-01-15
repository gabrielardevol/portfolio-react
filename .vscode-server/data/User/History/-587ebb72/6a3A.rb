class Meal
  attr_reader :id, :name, :price

  def initialize(csv, attributes = {}, id)
    @name = attributes[:name]
    @price = attributes[:price]
    @id = id
  end

end

class Meal
  attr_reader :id, :name, :price

  def initialize(attributes = {})
    @name = attributes[:name]
    @price = attributes[:price]
    @id = 0
  end
end

class Meal
  attr_reader :id, :name, :price

  def initialize(csv, attributes = {})
    @name = attributes[:name]
    @price = attributes[:price]
  end

end

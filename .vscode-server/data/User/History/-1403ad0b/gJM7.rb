class Meal
  attr_reader :name, :price, :id
  def initialize(meal_hash = {})
    @name = meal_hash[:name]
    @price = meal_hash[:price]
    @id = 0
  end

  def id=

  end
end

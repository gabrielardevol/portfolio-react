class Meal
  attr_reader :name, :price, :id

  def initialize(attributes = {})
    @name = attributes[:name]
    @price = attributes[:price]
   # @id = id[:id]
    @id = attributes[:id]
  end

  def id=
    # Should set the meal id
  end
end

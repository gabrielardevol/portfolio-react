class Meal
  attr_reader :name, :price

  def initialize(attributes = {}, id)
    @name = attributes[:name]
    @price = attributes[:price]
   # @id = id[:id]
   id = 1
  end

end

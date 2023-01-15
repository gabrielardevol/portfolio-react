class Meal
  attr_reader :name, :price, :id

  def initialize(attributes = {}, id)
    @name = attributes[:name]
    @price = attributes[:price]
   # @id = id[:id]
    @id = id
    p self.id
  end

  def method
  end

end

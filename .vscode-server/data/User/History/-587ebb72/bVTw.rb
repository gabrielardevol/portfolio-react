class Meal
  attr_reader :name, :price, :id

  def initialize(attributes = {}, id)
    @name = attributes[:name]
    @price = attributes[:price]
   # @id = id[:id]
    @id = id
  end

  def id_show
    @id
  end

end

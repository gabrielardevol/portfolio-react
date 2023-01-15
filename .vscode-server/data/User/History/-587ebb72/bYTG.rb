class Meal
  attr_reader :id, :name, :price
  id_num = 0
  def initialize(attributes = {})
    @name = attributes[:name]
    @price = attributes[:price]
    @id = id_num
    id_num += 1
  end
end

class Meal
  attr_reader :id, :name, :price

  def initialize(attributes = {})
    @name = attributes[:name]
    @price = attributes[:price]
    @id = id_num.to_i
    id_num += 1
  end
end

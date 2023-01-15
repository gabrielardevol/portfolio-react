class Meal
  def initialize(attributes = {})
    id_num = 0
    @name = attributes[:name]
    @price = attributes[:price]
    @id = id_num
    id_num += 1
  end
end

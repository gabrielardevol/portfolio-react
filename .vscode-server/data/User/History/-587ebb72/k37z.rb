class Meal
  attr_reader :id, :name, :price

  def initialize(attributes = {})
    @name = attributes[:name]
    @price = attributes[:price]
    gets_id
  end

end

class Customer
  attr_accessor :id
  def initialize(c_hash = {})
    @name = c_hash[:name]
    @adress = meal_hash[:adress]
    @id = meal_hash[:id]
  end
end

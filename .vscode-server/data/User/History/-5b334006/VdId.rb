class Customer
  attr_accessor :id, :adress

  def initialize(c_hash = {})
    @name = c_hash[:name]
    @adress = c_hash[:adress]
    @id = c_hash[:id]
  end
end

class Customer
  attr_accessor :id, :address, :name

  def initialize(c_hash = {})
    @name = c_hash[:name]
    @address = c_hash[:address]
    @id = c_hash[:id]
  end
end

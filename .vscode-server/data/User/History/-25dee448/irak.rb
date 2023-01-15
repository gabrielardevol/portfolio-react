require_relative "../repositories/customer_repository.rb"
require_relative "../views/customer_view.rb"

class CustomerController
  def initialize(csv = "data/customer.csv")
    @repository = CustomerRepository.new(csv)
    @view = CustomerView.new
  end

  def add
    customer = Hash.new
    customer[:name] = @view.ask_for("name")
    customer[:adress] = @view.ask_for("adress").to_f
    @repository.create(customer)
  end

  def list
    @view.display_customers(@repository.all)
  end

  def delete
    list
    index = @view.ask_for("index")
    @repository.delete(index.to_i - 1)
  end

  def find
    id = @view.ask_for("id")
    @repository.find(id)
  end
end

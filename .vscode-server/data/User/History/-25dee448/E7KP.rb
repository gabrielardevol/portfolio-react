require_relative "../views/customer_view"
require_relative "../repositories/customer_repository"

class CustomerController
  def initialize(repository) #s'inicialitza amb un repositori previament instanciat
    @repository = repository
    @view = customerView.new
  end

  def add
    customer = {}
    customer[:name] = @view.ask_for("name")
    customer[:price] = @view.ask_for("price").to_f
    @repository.create(customer)
  end

  def list #aquest mètode el posa en privat, i el crida des d'un altre mètode "display". per què?
    display
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

  private

  def display
    @view.display_customers(@repository.all)
  end
end

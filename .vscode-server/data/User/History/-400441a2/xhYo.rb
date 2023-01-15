require_relative "../views/employee_view"
require_relative "../repositories/employee_repository"

class SessionsController
  def initialize(repository) #s'inicialitza amb un repositori previament instanciat
    @repository = repository
    @view = EmployeeView.new
  end

require_relative "../views/employee_view"
require_relative "../repositories/employee_repository"

class SessionsController
  def initialize #s'inicialitza amb un repositori previament instanciat
    @view = EmployeeView.new
  end

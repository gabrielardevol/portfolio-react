require_relative "../views/sessions_view"
require_relative "../repositories/employee_repository"

class SessionsController
  def initialize(employee_repository = "../../data/employees.csv")
    @view = SessionsView.new
  end

  def login

  end
end

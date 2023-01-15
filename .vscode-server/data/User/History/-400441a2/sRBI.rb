require_relative "../views/sessions_view"
require_relative "../repositories/employee_repository"

class SessionsController
  def initialize(employee_repository)
    @view = SessionsView.new
  end

  def login
    p "hola"
  end
end

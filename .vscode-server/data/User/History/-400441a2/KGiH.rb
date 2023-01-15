require_relative "../views/sessions_view"
require_relative "../repositories/employee_repository"

class SessionsController
  def initialize(employee_repository)
    @view = SessionsView.new
    @employee_repository = employee_repository
  end

  def login
    username = @view.ask_for("username")
    password = @view.ask_for("password")
  end

  def verify
    @employee_repository.find_by_username
  end
end

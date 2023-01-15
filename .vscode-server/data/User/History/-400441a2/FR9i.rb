require_relative "../views/sessions_view"
require_relative "../repositories/employee_repository"

class SessionsController
  def initialize #s'inicialitza amb un repositori previament instanciat
    @view = SessionsView.new
  end

  def login

  end
end

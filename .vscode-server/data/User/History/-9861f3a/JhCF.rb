require_relative "./repositories/employee_repository"

employee = Employee.new(id: 1, username: "sarah", password: "secret", role: "manager")
p employee

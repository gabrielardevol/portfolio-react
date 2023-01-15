require_relative "../models/employee"
require "csv"

class EmployeeRepository
  attr_accessor :csv_file
  def initialize(csv_file = "data/employees.csv")
    @csv_file = csv_file
    @employees = []
    load_csv if File.exist?(@csv_file)
    p @employees
  end

  def create
    employee = Employee.new
  end

  def find_by_username

  end


  private
  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
    @employees << row
    end
  end

  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << ["id", "username", "password", "role"]
     @customers.each do |customer|
      csv << [customer.id,customer.username, customer.password, customer.role]
     end
    end
  end
end

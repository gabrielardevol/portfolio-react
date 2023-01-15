require_relative "../models/employee"
require "csv"

class EmployeeRepository
  def initialize(csv_file = "../../data/employee.csv")
    @csv_file = csv_file
    @employees = []
    @csv_file.exists?
  end

  private
  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      p row
    end
  end
end

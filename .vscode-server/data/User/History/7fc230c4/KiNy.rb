require_relative "../models/employee"
require "csv"

class EmployeeRepository
  attr_accessor :csv_file
  def initialize(csv_file = "../../data/employee.csv")
    @csv_file = csv_file
    @employees = []
  end

  private
  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      p row
    end
  end
end
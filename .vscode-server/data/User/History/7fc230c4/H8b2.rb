require_relative "../models/employee"
require "csv"

class EmployeeRepository
  attr_accessor :csv_file
  def initialize(csv_file = "data/employees.csv")
    @csv_file = csv_file
    @employees = []
    load_csv if File.exist?(@csv_file)
    puts "hola" if 2 + 2 = 4
  end

  def csv_exists?
    puts "csv exists?"
    p File.exists?(csv_file)
  end

  private
  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      p row
    end
  end
end

require_relative "../models/employee"
require "csv"

class EmployeeRepository
  attr_accessor :csv_file
  def initialize(csv_file = "data/employees.csv")
    @csv_file = csv_file
    @employees = []
    load_csv if File.exist?(@csv_file)
    puts "hola" if 2 + 2 == 4
  end

  private
  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      p row
    end
  end

  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << ["id", "username", "password", "role"]
     @customers.each do |customer|
      csv << [customer.id,customer.name]
     end
    end
  end
end

class EmployeeRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @employees = []
  end

  private
  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|

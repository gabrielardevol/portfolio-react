require_relative "../models/customer.rb"
require "csv"

class CustomerRepository

  def initialize(csv = "data/customers.csv")
    @csv = csv
    @customers = []

    array = []
    CSV.foreach(@csv) do |row|
      array << row[3]
    end
    @id_count = array[0].to_i
    load_csv if File.exist?(@csv)
  end

  def create(new_customer_hash = {})
    new_customer = Customer.new(new_customer_hash)
    if new_customer.id == nil
      puts new_customer.id.to_i
      new_customer.id = @id_count
      puts @id_count += 1
    end
    @customers << new_customer
    write_csv
  end

  def all
    @customers
  end

  def delete(index)
    @customers.delete_at(index)
    write_csv
  end

  def find(id_num)
    @customers.each do |customer|
      if customer.id == id_num
        return customer
      end
    end
  end

  private

  def load_csv
    CSV.foreach(@csv, headers: :first_row) do |row|
      customer = Hash.new
      customer[:id] = row["id"]
      customer[:name] = row["name"]
      customer[:address] = row["address"]
      # new_customer = create(customer)
      @customers << Customer.new(customer)
    end
  end

  def write_csv
    CSV.open(@csv, "wb") do |csv|
      csv << ["id", "name", "address", @id_count]
     @customers.each do |customer|
      csv << [customer.id,customer.name]
     end
    end
  end
end
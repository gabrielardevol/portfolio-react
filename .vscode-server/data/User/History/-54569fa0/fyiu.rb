require_relative "../models/meal.rb"
require "csv"

class MealRepository

  def initialize(csv = "data/meals.csv")
    @csv = csv
    @meals = []
    array = []
    CSV.foreach(@csv) do |row|
      array << row[3]
    end
    @id_count = array[0].to_i
    p @id_count
    read_csv
  end

  def create(new_meal_hash = {})
    # new_meal_hash[:id] == nil ? : @id_count += 1
    # new_meal_hash[:id] = @id_count #dóna nil
    new_meal = Meal.new(new_meal_hash)
    if new_meal.id == nil
      new_meal.id = @id_count
      @id_count += 1
    end
    @meals << new_meal
    write_csv
  end

  def all
   @meals
  end

  def delete(index)
    @meals.delete_at(index)
    write_csv
  end

  def find(id_num)
    @meals.each do |meal|
      if meal.id == id_num
        return meal
      end
    end
  end

  private
  def read_csv

    CSV.foreach(@csv, headers: :first_row) do |row|
      meal = Hash.new
      meal[:id] = row["id"]
      meal[:name] = row["name"]
      meal[:price] = row["price"]
      new_meal = create(meal)
    end
  end

  def write_csv
    CSV.open(@csv, "wb") do |csv|
      csv << ["id", "name", "price", @id_count]
     @meals.each do |meal|
      csv << [meal.id,meal.name,meal.price]
     end
    end
  end
end

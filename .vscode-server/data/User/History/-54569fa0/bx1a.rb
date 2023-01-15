require_relative "../models/meal.rb"
require "csv"

class MealRepository

  def initialize(csv = "data/meals.csv")
    @csv = csv
    @meals = []
    @id_count = 0
    read_csv
  end

  def create(new_meal_hash = {})
    p new_meal_hash[:id] #dóna nil
    new_meal = Meal.new(new_meal_hash)
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
    array = []
    CSV.foreach(@csv) do |row|
      array << row[3]
     end

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

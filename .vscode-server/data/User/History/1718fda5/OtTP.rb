require 'csv'

class MealRepository

  attr_accessor :meals
  def initialize(csv = "")
    load_csv(csv)
    @csv = csv
    p @meals = []
  end

  def create(hash)
    id = @meals.empty? ? 1 : @meals.last.id + 1
    p hash
   # hash[:id] = id
    meal = Meal.new(hash)
    #@meals << meal

   # save_csv(@csv)
  end

  def all
    @meals
  end

  def find

  end

  def load_csv(csv)
    CSV.foreach(csv, headers: :first_row) do |row|
      meal = {}
      #meal[:id] = row["id"]
      meal[:name] = row["name"]
      meal[:price] = row["price"]
      create(meal)
    end
  end

  def save_csv(csv)
    CSV.open(csv, "wb") do |csv|
      csv << ["id", "name", "price"]
      @meals.each do |meal_instance|
      csv << [meal_instance.id, meal_instance.name, meal_instance.price]
      end
    end
  end
end

require 'csv'

class MealRepository

  attr_reader :meals
  def initialize(csv = "")
    load_csv(csv)
    @csv = csv
    @meals = []
  end

  def create(hash)
    id = @meals.empty? ? 1 : @meals.last.id + 1
    hash[:id] = id
    meal = Meal.new(hash)
    @meals << meal
    save_csv(@csv)
  end

  def all
    @meals
  end

  def find

  end

  def load_csv(csv)
    CSV.foreach(csv, headers: :first_row) do |row|
      p id: row["id"]
      p name: row["name"]
      p price: ["price"]
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

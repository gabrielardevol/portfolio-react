DISHES_CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Veggie Burger" => 540,
  "Vegan Burger" => 350,
  "Sweet Potatoes" => 230,
  "Salad" => 15,
  "Iced Tea" => 70,
  "Lemonade" => 90
}

def poor_calories_counter(burger, side, beverage)
  DISHES_CALORIES[burger] + DISHES_CALORIES[side] + DISHES_CALORIES[beverage]
end

def calories_counter(orders)
  calories = 0
  p calories
  orders.each do |meal|
  if DISHES_CALORIES[meal] == nil
    case meal
    when "Cheesy combo"
    calories = poor_calories_counter("Cheese Burger", "Sweet Potatoes", "Lemonade")
    p calories
    when "Veggie Combo"
    poor_calories_counter("Veggie Burger", "Sweet Potatoes", "Iced Tea")
    when "Vegan Combo"
    poor_calories_counter("Vegan Burger", "Salad", "Lemonade")
    end
  elsif DISHES_CALORIES[meal]
  end
end
end

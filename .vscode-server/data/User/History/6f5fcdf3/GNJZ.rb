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
  orders.each do |meal|
  if poor_calories_counter(meal) == nil
    case orders
    when "Cheesy combo"
      return poor_calories_counter("Cheese Burger", "Sweet Potatoes", "Lemonade")
    when "Veggie Combo"
      poor_calories_counter("Veggie Burger", "Sweet Potatoes", "Iced Tea")
    when "Vegan Combo"
      poor_calories_counter("Vegan Burger", "Salad", "Lemonade")
    end
  else poor_calories_counter(meal)
  end

end

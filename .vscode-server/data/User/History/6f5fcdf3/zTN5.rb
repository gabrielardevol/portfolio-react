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

def ccalories_counter(orders)
  calories = 0
  p calories
  orders.each do |meal|
    if DISHES_CALORIES[meal].nil?
      case meal
      when "Cheesy combo"
        calories += poor_calories_counter("Cheese Burger", "Sweet Potatoes", "Lemonade")
        p calories
        p "HELLO"
      when "Veggie Combo"
        calories += poor_calories_counter("Veggie Burger", "Sweet Potatoes", "Iced Tea")
        p calories
      when "Vegan Combo"
        calories += poor_calories_counter("Vegan Burger", "Salad", "Lemonade")
        p calories
      end
      p calories
    else
      calories += DISHES_CALORIES[meal]
      p calories
    end
  end
  p calories
end

def calories_counter(orders)
  calories = 0
  p calories
  orders.each do |meal|
    if DISHES_CALORIES[meal].nil?
      if meal == "Cheesy combo"
        puts "quesito combo"
      end
    else
      calories += DISHES_CALORIES[meal]
      p calories
    end
  end
  p calories
end

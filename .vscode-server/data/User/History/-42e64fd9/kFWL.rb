def poor_calories_counter(burger, side, beverage)
  # TODO: return number of calories for this restaurant order
  case burger.key?
  when "Hamburger"
    250
  when "Cheese Burger"
    300
  when "Veggie Burger"
    540
  when "Vegan Burger"
    350
  end
end

def poor_calories_counter(burger, side, beverage)
  # TODO: return number of calories for this restaurant order
  hamburguer_calories = {
    "Hamburger"	=> 250,
    "Cheese Burger" =>	300,
    "Veggie Burger"	=> 540,
    "Vegan Burger" =>	350
  }
  side_calories = {
    "Sweet Potatoes" =>	230,
    "Salad"	=> 15
  }
  return hamburguer_calories[burger] + side_calories[side]
end

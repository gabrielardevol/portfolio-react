

def poor_calories_counter(burger, side, beverage)
  # TODO: return number of calories for this restaurant order
  hamburguer_calories = {
    "Hamburger"	=> 250,
    "Cheese Burger" =>	300,
    "Veggie Burger"	=> 540,
    "Vegan Burger" =>	350
  }
  return hamburguer_calories[burguer]
end

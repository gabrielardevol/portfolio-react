# burger("steak", "ketchup", "onions") do |patty|
#   "grilled #{patty}"
# end

def burger(patty, sauce, topping)
  burger_array = ["bread", "#{patty}", "#{sauce}", "#{topping}", "bread"]
  # TODO: code the `burger` method
  yield(burger_array)
end

bigger_burger = burger("fish", "mayo", "salad") do |burger_arrayy|
  burger_arrayy[1] = burger_arrayy[1].upcase
  p burger_arrayy
end

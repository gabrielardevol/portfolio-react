# burger("steak", "ketchup", "onions") do |patty|
#   "grilled #{patty}"
# end

def burger(patty, sauce, topping)
  burger_array = ["bread", "#{patty}", "#{sauce}", "#{topping}", "bread"]
  # TODO: code the `burger` method
  yield(burger_array)
end

bigger_burger = burger("patty", "sauce", "topping") do |burger_array|
  burger_array[1] = burger_array[1].upcase
  p burger_array
end

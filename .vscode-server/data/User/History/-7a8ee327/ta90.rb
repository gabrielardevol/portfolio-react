# burger("steak", "ketchup", "onions") do |patty|
#   "grilled #{patty}"
# end

def burger(patty, sauce, topping)
  burger_array = ["bread", "#{patty}", "#{sauce}", "#{topping}", "bread"]
  # TODO: code the `burger` method
  yield(burger_array)
end

bigger_burger = burger(patty, sauce, topping) do |patty, sauce, topping|
  burger_array[patty].upcase
end

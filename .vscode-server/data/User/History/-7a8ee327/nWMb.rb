# burger("steak", "ketchup", "onions") do |patty|
#   "grilled #{patty}"
# end

def burger(patty, sauce, topping)
  burger_array = ["bread", "#{patty}", "#{sauce}", "#{topping}", "bread"]
  # TODO: code the `burger` method
  #p burger_array
  yield(burger_array)
end
=begin
bigger_burger = burger("patty", "sauce", "topping") do |burger_array|
  burger_array[1] = burger_array[1].upcase
  p burger_array
end

juicy_burger = burger("patty", "sauce", "topping") do |burger_array|
  burger_array[1] = burger_array[1].#replace vowels with ~
  p burger_array
end

spicy_burger = burger("patty", "sauce", "topping") do |burger_array|
  burger_array[1] = "*#{burger_array[1]}*"
  p burger_array
end =end

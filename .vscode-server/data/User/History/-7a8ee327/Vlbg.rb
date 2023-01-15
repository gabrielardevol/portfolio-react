
def burger(patty, sauce, topping)
  burger_array = []
  burger_array << "bread"
  burger_array << patty.to_s
  burger_array << sauce.to_s
  burger_array << topping.to_s
  burger_array << "bread"
  # TODO: code the `burger` method
  #p burger_array
  yield(burger_array)
  #return burger_array
end

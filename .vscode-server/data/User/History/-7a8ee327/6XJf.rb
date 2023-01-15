
def burger(patty, sauce, topping)
  burger_array = []
  burger_array << "bread"
  burger_array << patty
  burger_array << sauce
  burger_array << topping
  burger_array << "bread"
  p burger_array
  # TODO: code the `burger` method
  #p burger_array
  yield(burger_array) if block_given?
  #return burger_array
end

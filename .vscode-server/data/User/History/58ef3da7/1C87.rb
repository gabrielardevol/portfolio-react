require_relative "burger_restaurant"

puts "💬 I'd like a burger with a bigger portion of fish, plus mayo and salad please."
# TODO: to upgrade a portion to a bigger one, transform the fish to uppercase
# bigger_burger =
bigger_burger = burger("fish", "mayo", "salad") do |patty|
  patty = patty.upcase
end

puts "💬 I'd like a juicy steak with barbecue sauce and cheddar please."
# TODO: to make a juicy steak, replace any vowel by the sign "~"
# juicy_burger =
juicy_burger = burger("steak", "barbecue", "cheddar") do |burger_array|
  patty = burger_array[1].to_s
  patty = patty.gsub("a", "~")
  patty = patty.gsub("e", "~")
  patty = patty.gsub("i", "~")
  patty = patty.gsub("o", "~")
  patty = patty.gsub("u", "~")
  burger_array[1] = patty
  p burger_array
end

puts "💬 I'd like a spicy chicken with ketchup and cheddar please."
# TODO: to make a spicy portion, add the sign "*" before and after the string
# spicy_burger =
spicy_burger = burger("chicken", "ketchup", "cheddar") do |burger_array|
  burger_array[1] = "*#{burger_array[1]}*"
  p burger_array
end





















# DO NOT remove this line, written for testing purpose
@variables = (local_variables.collect { |v| [v, binding.local_variable_get(v)] }).to_h
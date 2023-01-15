require_relative "compute_name"

puts "first name?"
first_name gets.chomp

puts "middle name?"
middle_name gets.chomp

puts "last name?"
last_name gets.chomp

puts "thank you #{compute_name(first_name, middle_name, last_name)}"

# TODO: ask for the first name
# TODO: ask for the middle name
# TODO: ask for the last name
# TODO: Print a greeting to the user with the full name concatenated,
#       something like "Hello, Boris Paillard"

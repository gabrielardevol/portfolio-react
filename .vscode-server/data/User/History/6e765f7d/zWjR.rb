require_relative "create_ingredient"
require_relative "create_recipe"
puts "welcome to interface; i->ingredient, r->recipes"
answer = gets.chomp
create_ingredient
create_recipe

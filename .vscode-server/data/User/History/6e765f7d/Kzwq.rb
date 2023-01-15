require_relative "create_ingredient"
require_relative "create_recipe"
puts "welcome to interface; i->ingredient, r->recipes"
answer = gets.chomp
case answer
when "i"
  create_ingredient
when "r"
  create_recipe
end

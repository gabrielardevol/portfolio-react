require_relative "create_ingredient"
require_relative "create_recipe"
puts "welcome to interface"
answer = nil
until answer == "q"
  puts "i->ingredient, r->recipes, q->quit"
  answer = gets.chomp
  case answer
  when "i"
    create_ingredient
  when "r"
    create_recipe
  end
end

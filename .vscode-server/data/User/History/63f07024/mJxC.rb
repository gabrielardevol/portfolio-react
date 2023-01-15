# TODO: implement the router of your app.
require_relative "app/controllers/meal_controller.rb"
controller = MealController.new
answer = nil
until answer == "5" do
  puts "##########################"
  puts "1 - display list of meals"
  puts "2 - add meal"
  puts "3 - delete meal"
  puts "4 - find meal by id"
  puts "5 - exit"
  puts "##########################"

  answer = gets.chomp
  case answer
  when "1"
    controller.list
  when "2"
    controller.add
  when "3"
    controller.delete
  when "4"
    controller.find
  end
end

# TODO: implement the router of your app.
require_relative "app/controllers/meal_controller.rb"
#mr = MealRepository.new
mc = MealController.new("")
r = Router.new(mc)
class Router
  def initialize(meals_controller)
    @meals_controller = meals_controller
    @running = true
  end

  def run
    while @running
      answer = display_menu
    end
  end

  def display_menu
    puts "###########################"
    puts "1 - display list of meals"
    puts "2 - add meal"
    puts "3 - delete meal"
    puts "4 - find meal by id"
    puts "5 - exit"
    puts "###########################"
    gets.chomp.to_i
  end

  def action(answer)
    case answer
    when "1"
      controller.list
    when "2"
      controller.add
    when "3"
      controller.delete
    when "4"
      controller.find
    when "5"
      @running = false
    end
  end
end

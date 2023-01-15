# TODO: implement the router of your app.
require_relative "app/controllers/meal_controller"

class Router
  def initialize(meals_controller)
    @meals_controller = meals_controller
    @running = true
    run
  end

  def run
    while @running
      answer = display_menu
      action(answer)
    end
  end

  def display_menu
    puts "###########################"
    puts "1 - display list of meals"
    puts "2 - add meal"
    puts "3 - delete meal"
    puts "4 - find meal by id"
    puts "5 - quit"
    puts "###########################"
    gets.chomp.to_i
  end

  def action(answer)
    case answer
    when "1" then controller.list
    when "2" then controller.add
    when "3" then controller.delete
    when "4" then controller.find
    when "5" then @running = false
    else puts "please try again"
    end
  end
end

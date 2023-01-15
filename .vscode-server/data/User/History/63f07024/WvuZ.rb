# TODO: implement the router of your app.
require_relative "app/controllers/meal_controller"
require_relative "app/controllers/customer_controller"

class Router
  def initialize(meals_controller, customers_controller)
    @mcontroller = meals_controller
    @ccontroller = customers_controller
    @running = true
    run
  end

  def run
    while @running
      answer = display_menu
      p answer
      action(answer)
    end
  end

  def display_menu
    puts "###########################"
    puts "1 - display list of meals"
    puts "2 - add meal"
    puts "3 - delete meal"
    puts "4 - find meal by id"
    puts "5 - display list of customers"
    puts "6 - add customer"
    puts "7 - quit"
    puts "###########################"
    gets.chomp.to_i
  end

  def action(answer)
    case answer.to_i
    when 1 then @mcontroller.list
    when 2 then @mcontroller.add
    when 3 then @mcontroller.delete
    when 4 then @mcontroller.find
    when 5 then @ccontroller.list
    when 6 then @ccontroller.add
    when 7 then @running = false
    end
  end
end

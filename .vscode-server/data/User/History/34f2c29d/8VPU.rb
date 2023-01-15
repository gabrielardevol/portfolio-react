# TODO: implement the router of your app.
require_relative "app/controllers/meal_controller"
require_relative "app/controllers/customer_controller"
require_relative "app/controllers/sessions_controller"

class Router
  def initialize(meals_controller, customers_controller, sessions_controller)
    @mcontroller = meals_controller
    @ccontroller = customers_controller
    @sessions_controller = sessions_controller
    @running = true
    login
    # @sessions_controller.verify ? run
  end

  def login
    @sessions_controller.login
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
    puts "3 - display list of customers"
    puts "4 - add customer"
    puts "5 - quit"
    puts "###########################"
    gets.chomp.to_i
  end

  def action(answer)
    case answer.to_i
    when 1 then @mcontroller.list
    when 2 then @mcontroller.add
    when 3 then @ccontroller.list
    when 4 then @ccontroller.add
    when 5 then @running = false
    end
  end
end

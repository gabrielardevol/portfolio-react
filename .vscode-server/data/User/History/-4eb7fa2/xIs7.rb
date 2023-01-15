# what have I watch over a period of time
# what kind of media have I consumed the most
require_relative "view"
require_relative "controller"
class Router
  def initialize
    @running = true
    @view = View.new
    @controller = Controller.new
    run
  end

  def run
    if @running == true
      choice = @view.display_options
      case choice
      when "1"
        puts @controller.display
      when "2"
        puts "2"
      else
        puts "else"
      end
    end
  end

end

r = Router.new

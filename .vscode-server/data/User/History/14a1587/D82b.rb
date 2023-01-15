# what have I watch over a period of time
# what kind of media have I consumed the most
require_relative "view"
class Router
  def initialize
    running = true
    @view = View.new
    if running == true
      @view.display_options
    end
    #if running.true? do
    #  choice = @view.display_options
    #  case choice
    #  when 1
    #    puts "router 1"
    #  when 2
    #    puts "router 2"
    #  end
    #end
  end

end

Router.new

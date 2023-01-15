# what have I watch over a period of time
# what kind of media have I consumed the most
class Router
  def initialize
    running = true
    @view = View.new
  if running.true? do
    choice = @view.display_options
    case choice
    when 1
      puts "router 1"
    when 2
      puts "router 2"
    end
  end
end

class View
  def display_options
    puts "1 -"
    puts "2 -"
    return gets.chomp
  end
end

Router.new

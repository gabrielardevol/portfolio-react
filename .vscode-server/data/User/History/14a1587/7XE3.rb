class Router
  def initialize
    running = true
    @view = View.new
  when running.true? do
    @view.display_options
  end
end

class View
  def display_options
    puts "1 -"
    return gets.chomp
  end
end

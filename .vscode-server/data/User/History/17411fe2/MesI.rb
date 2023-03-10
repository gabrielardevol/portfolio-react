require_relative "game_controller.rb"
require_relative "house_game_view"
class HouseGameController < GameController
  def initialize
    @view = HouseGameView.new
  end

  def pigs_build
    n = 0
    time1 = Time.now
    time2 = nil
    until time2.to_i - time1.to_i >= 1
      time2 = Time.new
      n +=1
      gets.chomp
    end
    @view.display_house(n)
    p n
  end
end

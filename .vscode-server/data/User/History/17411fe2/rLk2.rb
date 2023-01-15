require_relative "game_controller.rb"
require_relative "house_game_view"
class HouseGameController < GameController
  def initialize
    @view = HouseGameView.new
    @n = 23
  end

  def pigs_build
    time1 = Time.now
    time2 = nil
    extra_bricks = 0
    until time2.to_i - time1.to_i >= 10
      time2 = Time.new
      extra_bricks += 0.1
      gets.chomp
    end
    @view.display_house(@n)
  end

  def wolf_blows(less_bricks)
    @n -= less_bricks
    @n.times do
      @view.display_house(@n)
    end
  end
end

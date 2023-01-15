require_relative "game_controller.rb"
class HouseGameController < GameController
  def build
    n = 0
    time1 = Time.now
    time2 = nil
    until time2.to_i - time1.to_i >= 3
      gets.chomp
      n +=1
    end
    p n
  end
end

require_relative "game"
require_relative "game_view"


class GameController
  def initialize(start_distance, wolf_to_pig_distance, pig_to_house_distance, time_duration)
    @game = Game.new(start_distance, wolf_to_pig_distance, pig_to_house_distance, time_duration)
    @view = GameView.new
    @running = true
    until @running == false
      self.run
      p "test"
    end
  end

  def run
    p "running"
    if @running == true
      until @game.distances_array[2] == 0 || @game.distances_array[1] <= 0 do
        gets.chomp
        @game.wolf_runs(Time.now)
        @game.pig_runs
        puts @view.display(@game.distances_array)
        # time2 = Time.now
      end

      if @game.distances_array[2] <= 0
        puts "pig got to house"
      elsif @game.distances_array[1] <= 0
        puts "pig got eaten"
      end
      @running = false
    end
  end

end


start_distance = 0
wolf_to_pig_distance = 20
pig_to_house_distance = 80
time_duration = 11.9
Game.new(start_distance, wolf_to_pig_distance, pig_to_house_distance, time_duration)

require_relative 'game'
require_relative 'game_view'
# GameController
class GameController
  # TODO: pass hash as an argument
  def initialize(hash = {})
    @game = Game.new(hash)
    @view = GameView.new
    run
    p "GameController.initialize"
    p hash
  end

  def run
   # until @game.distances_array[2].zero? || @game.distances_array[1] <= 0
   #   @game.wolf_runs(Time.now)
   #   @game.pig_runs
   #   p "GameController.run"
   #   p @game.distances_array
   #   p "*****************"
   #   puts @view.display_rungame(@game.distances_array)
   #   gets.chomp
   # end
    run_result
  end

  def run_result
    if @game.distances_array[2] <= 0
      @view.pig_wins
    elsif @game.distances_array[1] <= 0
      @view.pig_looses
    end
  end
end

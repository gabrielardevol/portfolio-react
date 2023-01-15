
class Game
  def initialize(hash)
    p "Game.initialize"
    p hash
    @start_distance = hash[:start_distance].to_i
    @wolf_to_pig_distance = hash[:wolf_to_pig_distance].to_i
    @pig_to_house_distance = hash[:pig_to_house_distance].to_i
    @total_distance = @start_distance + @wolf_to_pig_distance + @pig_to_house_distance
    @game_duration = hash[:game_duration].to_f
    @time1 = Time.now
    p distances_array

  end

  def wolf_runs(time2) # there is a bug
    p @start_distance
    p @total_distance
    p @game_duration
    p time2
    p @time1
    p (time2 -  @time1)
    # @start_distance = (@total_distance / @game_duration) * (time2 - @time1)
    @wolf_to_pig_distance = @total_distance - (@start_distance + @pig_to_house_distance)
  end

  def pig_runs
    @pig_to_house_distance -= 1
    @wolf_to_pig_distance += 1
  end

  def distances_array
    p "Game.distances_array"
    p @start_distance
    p @wolf_to_pig_distance
    p @pig_to_house_distance
    p [@start_distance, @wolf_to_pig_distance, @pig_to_house_distance]
  end
end

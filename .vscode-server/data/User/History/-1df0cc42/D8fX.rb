class Game

  def initialize(start_distance, wolf_to_pig_distance, pig_to_house_distance, game_duration)
    @start_distance = start_distance
    @wolf_to_pig_distance = wolf_to_pig_distance
    @pig_to_house_distance = pig_to_house_distance
    @total_distance = start_distance + wolf_to_pig_distance + pig_to_house_distance
    @game_duration = game_duration
    @time1 = Time.now
  end

  def wolf_runs(time2) # there is a bug
    @start_distance = (@total_distance / @game_duration) * (time2 - @time1)
    @wolf_to_pig_distance = @total_distance - (@start_distance + @pig_to_house_distance)
  end

  def pig_runs
    @pig_to_house_distance -= 1
    @wolf_to_pig_distance += 1
  end

  def distances_array
   [@start_distance, @wolf_to_pig_distance, @pig_to_house_distance]
  end
end

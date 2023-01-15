  p time1 = Time.now

  start_distance = 0
  wolf_to_pig_distance = 10
  count = 0
  final_distance = 90

  p timelapse = Time.now - time1
  p wolf_run = timelapse / (wolf_to_pig_distance + final_distance).to_f



  puts ("🌲" * start_distance.to_i) + "🐺" + "🌲" * (wolf_to_pig_distance + count).to_i + "🐷" + "🌲" * final_distance + "🏠"

  #def wolf_run
    start_distance += 1
    wolf_to_pig_distance -= 1
  #end

  puts ("🌲" * start_distance.to_i) + "🐺" + "🌲" * (wolf_to_pig_distance + count).to_i + "🐷" + "🌲" * final_distance + "🏠"

  #wolf_run

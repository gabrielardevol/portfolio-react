  time1 = Time.now

  start_distance = 0
  wolf_to_pig_distance = 10
  count = 0
  final_distance = 90
sleep(4)
  total_time = 15
  p time_passed = (Time.now - time1).to_i
  p per_second = (100.0 / total_time)
  p per_second * time_passed
  final_distance = 90
sleep(4)
  p time_passed = (Time.now - time1).to_i
  p per_second
  p per_second * time_passed




  puts ("🌲" * start_distance.to_i) + "🐺" + "🌲" * (wolf_to_pig_distance + count).to_i + "🐷" + "🌲" * final_distance + "🏠"

  #def wolf_run
    start_distance += 1
    wolf_to_pig_distance -= 1
  #end

  puts ("🌲" * start_distance.to_i) + "🐺" + "🌲" * (wolf_to_pig_distance + count).to_i + "🐷" + "🌲" * final_distance + "🏠"

  #wolf_run

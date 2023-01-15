  time1 = Time.now

  start_distance = 0
  wolf_to_pig_distance = 10
  count = 0
  final_distance = 90
sleep(3)
  p time_passed = (Time.now - time1).to_i




  puts ("🌲" * start_distance.to_i) + "🐺" + "🌲" * (wolf_to_pig_distance + count).to_i + "🐷" + "🌲" * final_distance + "🏠"

  #def wolf_run
    start_distance += 1
    wolf_to_pig_distance -= 1
  #end

  puts ("🌲" * start_distance.to_i) + "🐺" + "🌲" * (wolf_to_pig_distance + count).to_i + "🐷" + "🌲" * final_distance + "🏠"

  #wolf_run

  start_distance = 0
  wolf_to_pig_distance = 10
  count = 0
  final_distance = 90
  puts ("🌲" * start_distance.to_i) + "🐺" + "🌲" * (wolf_to_pig_distance + count).to_i + "🐷" + "🌲" * final_distance + "🏠"

  #def wolf_run
    start_distance += 1
    wolf_to_pig_distance -= 1
  #end
  puts ("🌲" * start_distance.to_i) + "🐺" + "🌲" * (wolf_to_pig_distance + count).to_i + "🐷" + "🌲" * final_distance + "🏠"

  #wolf_run

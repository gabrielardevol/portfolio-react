time1 = Time.now
# sleep(5)
time2 = nil
count = 0
start_distance = 0
mid_distance = 98
final_distance = 98
until time1.to_f - time2.to_f <= -5 do
  time2 = Time.now
  puts "🚽" + "🌲" * start_distance + "🐺" + "🌲" * (mid_distance + count) + "🐷" + "🌲" * final_distance + "🏠"
  puts "press any key to run to the house!"
  gets.chomp ? count += 1 : nil
  start_distance += 1
  mid_distance -= 1
  final_distance -= 1


end

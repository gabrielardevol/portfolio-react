time1 = Time.now
# sleep(5)
time2 = nil
count = 0
initial_distance = 99
final_distance = 99
until time1.to_f - time2.to_f <= -5 do
  time2 = Time.now
  puts "🐺" + "🌲" * (initial_distance + count) + "🐷" + "🌲" * final_distance
  gets.chomp ? count += 1 : nil
  final_distance -= 1


end

time1 = Time.now
# sleep(5)
time2 = nil
count = 0
start_distance = 0
mid_distance = 49
final_distance = 100
until time1.to_f - time2.to_f <= -15 do
  time2 = Time.now
  puts ("🌲" * start_distance) + "🐺" + "🌲" * (mid_distance + count) + "🐷" + "🌲" * final_distance + "🏠"
  puts "press any key to run to the house!"
  gets.chomp ? count += 1 : nil
  start_distance += 1
  mid_distance -= 1
  final_distance -= 1
end

# en setze segons pots clical cent vegades
# en disset segons arriba el llop a la casa
# si trigues més que el llop, et menja

time1 = Time.now
# sleep(5)
time2 = nil
count = 0
until time1.to_f - time2.to_f <= -5 do
  gets.chomp ? count += 1 : nil
  time2 = Time.now
  puts "🐺"
  10.times do
  puts "🌲"*100
  end
  puts "  "*count + "🐷"

end

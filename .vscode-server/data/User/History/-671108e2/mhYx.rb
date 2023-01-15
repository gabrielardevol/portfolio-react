house = 24
wolf_air = 3
wolf_blows = house -= wolf_air, wolf_air += 2

p house
p wolf_air

time1 = Time.new
time2 = nil
chomp_count = 0
until time2.to_f - time1.to_f >= 3
  gets.chomp
  chomp_count += 1
end
house += (chomp_count/3)
p house

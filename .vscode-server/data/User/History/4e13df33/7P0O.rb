time1 = Time.now
time2 = Time.now
cops = 0
until time1.to_f - time2.to_f <= -5 do
  time2 = Time.now
  p time1 - time2
  ch = gets.chomp
  cops +=1
end
p time1.to_f - time2.to_f

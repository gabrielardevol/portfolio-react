time1 = Time.now
time2 = Time.now
cops = 0
until time1.to_f - time2.to_f <= -5 do
  time2 = Time.now
  time1 - time2
  gets.chomp == "a" ?  cops +=1
  p cops
end
p time1.to_f - time2.to_f

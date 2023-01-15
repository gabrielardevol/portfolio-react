time1 = Time.now
time2 = Time.now

until time1.to_f - time2.to_f >= 5 do
  time2 = Time.now
  p time1 - time2
end
p time1.to_f - time2.to_f

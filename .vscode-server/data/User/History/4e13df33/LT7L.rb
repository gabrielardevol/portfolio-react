time1 = Time.now
time2 = Time.now
until time1.to_f - time2.to_f >= 5 do
  p ...
  time2 = Time.now
end
p time1.to_f - time2.to_f

time1 = Time.now
# sleep(5)
time2 = Time.now
until time1.to_f - time2.to_f <= -5 do
  p "hello"
  gets.chomp
end

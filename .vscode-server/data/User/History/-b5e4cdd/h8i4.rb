def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  sum = 0
  if min > max
    -1
  else
    for num in min..max do
      sum = sum + num
      puts sum
    end
    return sum
  end
end

def sum_with_while(min, max)
  x = 1
  num = min
  total = 0
  while x <= (max - min)
    num += 1
    puts num
    x = x + 1
    total = total + num
  end
  puts total
  # CONSTRAINT: you should use a while..end structure
end
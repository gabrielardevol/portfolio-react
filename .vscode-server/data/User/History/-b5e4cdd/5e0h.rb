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
  x = 0
  while x < (max - min)
    x += 1
    puts min += 1
  end
  # CONSTRAINT: you should use a while..end structure
end

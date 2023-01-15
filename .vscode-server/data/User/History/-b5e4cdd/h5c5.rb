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
  loops = 1
  num = min
  total = min
  while loops <= (max - min)
    num += 1
    puts num
    loops = loops + 1
    total = total + num
    puts total
  end
  # CONSTRAINT: you should use a while..end structure
end

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
  sum = min
  # if min < max
  while loops <= (max - min)
    num += 1
    loops = loops + 1
    sum = sum + num
    # puts sum
  end
  min < max ? sum : -1
  # else
  # return -1
  # end
  # CONSTRAINT: you should use a while..end structure
end
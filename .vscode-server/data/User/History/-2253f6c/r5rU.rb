def horse_racing_format!(race_array)
  index = 0
  position = 1
  until position == race_array.length + 1
    horse = "#{position}-#{race_array[index]}!"
    race_array.delete_at(index)
    race_array.unshift(horse)
    index += 1
    position += 1
  end
end

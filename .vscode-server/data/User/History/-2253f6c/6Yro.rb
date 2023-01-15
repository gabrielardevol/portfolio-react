def no_horse_racing_format!(race_array)
  position = 1
  until position == race_array.length + 1
    indexed_horse = "#{position}-#{race_array[0]}"
    race_array.delete_at(0)
    race_array << indexed_horse
    position += 1
    # TODO: modify the given array so that it is horse racing consistent. This method should return nil.
  end
  race_array.reverse
end

def horse_racing_format!(race_array)
  index = 0
  position = 1
  p race_array.object_id
  until position == race_array.length + 1
    race_array[0] = "#{position}-#{race_array[0]}!"
    race_array
    position += 1
    index += 1
  end
  p race_array.object_id

  return race_array.reverse
end

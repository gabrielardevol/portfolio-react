class Text
  def display(array, time, spacing)
    index = 0
    until index == array.size do
      spacing.times do
        puts ""
      end
      puts array[0..index]
      index += 1
      sleep(time)
    end
  end
end

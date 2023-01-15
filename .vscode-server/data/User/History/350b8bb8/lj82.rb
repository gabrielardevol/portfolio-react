class Text
  def display(array, time, spacing, upper_string = "", bottom_spacing = 0)
    index = 0
    until index == array.size do
      spacing.times do
        puts ""
      end
      puts upper_string
      puts array[0..index]
      index += 1
      sleep(time)
    end
  end
end

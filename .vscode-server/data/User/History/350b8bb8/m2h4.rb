# Text View displays strings using visual effects on console
class Text
  def display(array, time, top_space, upper_string = "", bottom_space = 0)
    index = 0
    until index == array.size
      top_spacing(top_space)
      puts upper_string
      puts array[0..index]
      bottom_space.times do
        puts ''
      end
      index += 1
      sleep(time)
    end
  end

  def top_spacing(top_space)
    top_space.times do
      puts ""
    end
  end
end

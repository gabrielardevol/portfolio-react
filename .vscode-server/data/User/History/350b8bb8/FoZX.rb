class Text
  def display(array, time)
    index = 0
    until index == array.size do
      100.times do
        puts ""
      end
      puts array[0..index]
      index += 1
      sleep(time)
    end
  end
end

Text.new.display("hello")

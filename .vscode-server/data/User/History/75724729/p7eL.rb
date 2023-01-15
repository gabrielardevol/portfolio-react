require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.
puts "Hey, why are you not working?"
your_answer = gets.chomp
until your_answer == "I am going to work right now!"
  puts coach_answer(your_answer)
end

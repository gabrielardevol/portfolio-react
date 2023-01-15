require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.
puts "Hey, why are you not working?"
until your_answer == "I am going to work right now!"
  your_answer = gets.chomp
  puts coach_answer(your_answer)
end

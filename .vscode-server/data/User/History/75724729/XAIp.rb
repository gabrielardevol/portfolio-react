require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.
puts "Hey, why are you not working?"
your_answer = gets.chomp
puts coach_answer(your_answer)

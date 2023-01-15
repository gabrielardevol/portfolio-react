require_relative "croupier"
ask_for_card = "Card? 'y' or 'yes' to get a new card"
puts ask_for_card
answer = gets.chomp
until answer != ("y" || "yes")
  puts state_of_the_game(pick_player_card, pick_bank_score)
  # puts "Your score is #{pick_player_card}, bank is #{pick_bank_score}"
  puts ask_for_card
  answer = gets.chomp
end
# TODO: make the user play from terminal in a while loop that will stop
#       when the user will not be asking for  a new card

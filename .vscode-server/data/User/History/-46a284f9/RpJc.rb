require_relative "croupier"
ask_for_card = "Card? 'y' or 'yes' to get a new card"
puts ask_for_card
answer = gets.chomp
until answer != ("y" || "yes")
  puts ask_for_card
  answer = gets.chomp
end
puts pick_bank_score
puts pick_player_card
# TODO: make the user play from terminal in a while loop that will stop
#       when the user will not be asking for  a new card

require_relative "croupier"
ask_for_card = "Card? 'y' or 'yes' to get a new card"
puts ask_for_card
answer = gets.chomp
bank_score = pick_bank_score
player_score = 0
until answer != ("y" || "yes")
  player_score += pick_player_card
  puts state_of_the_game(player_score, bank_score)
  # puts "Your score is #{pick_player_card}, bank is #{pick_bank_score}"
  puts ask_for_card
  answer = gets.chomp
end
p "end"
if player_score == 21
  "Black Jack"
elsif player_score > bank_score
  "Win"
else
  "Lose"
end
# TODO: make the user play from terminal in a while loop that will stop
#       when the user will not be asking for  a new card

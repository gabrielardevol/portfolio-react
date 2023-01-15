require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  player_score = pick_player_card
  bank_score = pick_bank_score
  "Your score is #{player_score}, bank is #{bank_score}"
  p player_score

end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
end

p player_score

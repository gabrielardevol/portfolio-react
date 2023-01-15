# TODO: if message contains "?" answers: "Silly question, get dressed and go to work!"
# if it doesn't, answers: "I don't care, get dressed and go to work!".
# if message is "I am going to work right now!", coach leaves you alone


def coach_answer(your_message)
  until your_message == "I am going to work right now!"
    if your_message.include? "?"
      puts "Silly question, get dressed and go to work!"
    else
      puts "I don't care, get dressed and go to work!"
    end
  end
  # TODO: return coach answer to your_message
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
end

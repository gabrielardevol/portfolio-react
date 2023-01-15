# TODO: if message contains "?" answers: "Silly question, get dressed and go to work!"
# if it doesn't, answers: "I don't care, get dressed and go to work!".
# if message is "I am going to work right now!", coach leaves you alone

def coach_answer(your_message)
  if your_message.include? "?"
    return "Silly question, get dressed and go to work!"
  elsif your_message == "I am going to work right now!" || "I AM GOING TO WORK RIGHT NOW!"
    return ""
  else
    return "I don't care, get dressed and go to work!"
  end
end
# TODO: return coach answer to your_message

def coach_answer_enhanced(your_message)
  if your_message == your_message.upcase
    "I can feel your motivation! #{coach_answer(your_message)}"
  else
    coach_answer(your_message)
  end
  # TODO: return coach answer to your_message, with additional custom rules of yours!
end

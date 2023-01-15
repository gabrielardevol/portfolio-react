class SessionsView
  def ask_for(word)
    puts "What's your #{word}?"
    gets.chomp
  end
end

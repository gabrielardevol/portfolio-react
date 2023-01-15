class SessionsView
  def initialize
    p "new sessions view"
  end

  def ask_for(word)
    puts "What's your #{word}?"
  end
end

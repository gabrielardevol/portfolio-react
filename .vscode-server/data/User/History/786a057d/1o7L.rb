class MealView
  def initialize
  end

  def ask_for(word)
    puts "whats the #{word} of this meal?"
    gets.chomp
  end
end

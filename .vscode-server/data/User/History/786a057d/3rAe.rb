class MealView
  def initialize
  end

  def ask_for(word)
    puts "whats the #{word} of this meal?"
    gets.chomp
  end

  def display_meals(meal_hash)
    puts "###########################"
    puts "#######  M E A L S ########"
    puts "###########################"

    meal_hash.each do |meal|
      puts "#{meal.id} - #{meal.name} - #{meal.price}"
    end
    nil
  end
end

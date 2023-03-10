require_relative "game_view"
class HouseGameView < GameView

  def initialize
    @row6 = "     🧱"
    @row5 = "   🧱🧱🧱"
    @row4 = " 🧱🧱🧱🧱🧱"
    @row3 = "🧱🧱🧱🧱🧱🧱"
    @row2 = "🧱🧱    🧱🧱"
    @row1 = "🧱🧱🐷🐷🧱🧱"

    @margin = (" " * 10)
    @wolf = "🐺#{@margin[0...-2]}"
  end

  def wolf_animation(n)
    # p n
    # p margin = @margin
    # n.times do
    #   margin = "💨" + margin[0...-2]
    # p mar gin
    # end
    margin = @margin[0...-2]
    margin[-1] == "💨" ? puts("yes") : puts("no")
    wa1 = "💨      "
    wa2 = "💨💨    "
    wa3 = "💨💨💨  "
    wa4 = "💨💨💨💨"
    wa5 = "  💨💨💨"
    wa6 = "    💨💨"
    wa7 = "      💨"

  end


  def display_house(n)
    # p n
    n = n.to_i
    puts "top"
    puts n >= 23 ? ("#{@margin} #{@row6}") : puts("")
    puts n >= 22 ? ("#{@margin} #{@row5}") : puts("")
    n > 19 && n < 22 ? puts(@margin + " "*(10-((n-19)*2)) + "🧱"*(n - 19)) : puts("")
    puts n >= 19 ? ("#{@margin} #{@row4}") : puts("")
    n > 14 && n < 19 ? puts(@margin + " "*(12-((n-14)*2)) + "🧱"*(n - 14)) : puts("")
    puts n >= 14 ? ("#{@margin} #{@row3}") : puts("")
    n > 8 && n < 14 ? puts(@margin + " "*(13-((n-8)*2)) + "🧱"*(n - 8)) : puts("")
    # n > 8 ? fractioned_row(n) : nil
    puts n >= 8 ? ("#{@margin} #{@row2}") : puts("")
    n > 4 && n < 8 ? fractioned_row(n) : puts("")
    puts n >= 4 ? ("#{@wolf} #{@row1}") : puts("")
    n < 4 ? fractioned_row(n) : puts("")

    puts "Total bricks: #{n}"
  end

  def fractioned_row(n)
    n == 7 ? puts("#{@margin}   🧱    🧱🧱") : puts("")
    n == 6 ? puts("#{@margin}         🧱🧱") : puts("")
    n == 5 ? puts("#{@margin}           🧱") : puts("")
    n == 3 ? puts("#{@wolf}   🧱🐷🐷🧱🧱") : puts("")
    n == 2 ? puts("#{@wolf}     🐷🐷🧱🧱") : puts("")
    n == 1 ? puts("#{@wolf}     🐷🐷  🧱") : puts("")
    n == 0 ? puts("#{@wolf}     🐷🐷    ") : puts("")
  end
end

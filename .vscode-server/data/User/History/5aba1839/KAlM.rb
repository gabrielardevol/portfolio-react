require_relative "game_view"
class HouseGameView < GameView

  def initialize
    @row6 = "     π§±"
    @row5 = "   π§±π§±π§±"
    @row4 = " π§±π§±π§±π§±π§±"
    @row3 = "π§±π§±π§±π§±π§±π§±"
    @row2 = "π§±π§±    π§±π§±"
    @row1 = "π§±π§±π·π·π§±π§±"

    @margin = (" " * 10)
    @wolf = "πΊ#{@margin[0...-2]}"
  end

  def wolf_animation(n)
    p n
    p @margin

    πΊπ¨
    πΊπ¨π¨
    πΊπ¨π¨π¨
    πΊπ¨π¨π¨π¨
    πΊ  π¨π¨π¨
    πΊ    π¨π¨
    πΊ      π¨
    πΊ
  end


  def display_house(n)
    # p n
    n = n.to_i

    puts n >= 23 ? ("#{@margin} #{@row6}") : nil
    puts n >= 22 ? ("#{@margin} #{@row5}") : nil
    n > 19 && n < 22 ? puts(@margin + " "*(10-((n-19)*2)) + "π§±"*(n - 19)) : nil
    puts n >= 19 ? ("#{@margin} #{@row4}") : nil
    n > 14 && n < 19 ? puts(@margin + " "*(12-((n-14)*2)) + "π§±"*(n - 14)) : nil
    puts n >= 14 ? ("#{@margin} #{@row3}") : nil
    n > 8 && n < 14 ? puts(@margin + " "*(13-((n-8)*2)) + "π§±"*(n - 8)) : nil
    # n > 8 ? fractioned_row(n) : nil
    puts n >= 8 ? ("#{@margin} #{@row2}") : nil
    n > 4 && n < 8 ? fractioned_row(n) : nil
    puts n >= 4 ? ("#{@wolf} #{@row1}") : nil
    n < 4 ? fractioned_row(n) : nil
  end

  def fractioned_row(n)
    n == 7 ? puts("#{@margin}   π§±    π§±π§±") : nil
    n == 6 ? puts("#{@margin}         π§±π§±") : nil
    n == 5 ? puts("#{@margin}           π§±") : nil
    n == 3 ? puts("#{@wolf}   π§±π·π·π§±π§±") : nil
    n == 2 ? puts("#{@wolf}     π·π·π§±π§±") : nil
    n == 1 ? puts("#{@wolf}     π·π·  π§±") : nil
    n == 0 ? puts("#{@wolf}     π·π·    ") : nil
  end
end

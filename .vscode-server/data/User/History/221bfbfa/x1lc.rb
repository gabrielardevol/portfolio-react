class GameView
  def initialize
    # p "gameview initialized"
  end
  def display_rungame(array)
    start_distance = array[0]
    wolf_to_pig_distance = array[1]
    pig_to_house_distance = array[2]
    20.times do
      puts ""
    end
      if wolf_to_pig_distance <= 0
        puts "đČ" * start_distance.to_i + "đș" + "đ" +  "đČ" * pig_to_house_distance + "đ "
      elsif array[2] > 0
        puts "đČ" * start_distance.to_i + "đș" + "đČ" * wolf_to_pig_distance.to_i + "đ·" + "đČ" * (pig_to_house_distance - 1) + "đ "
      elsif pig_to_house_distance <= 0
        puts "đČ" * (start_distance.to_i) + "đș" + "đČ" * wolf_to_pig_distance.to_i + "đ "
      end
  end

  def pig_wins
    puts "pig wins"
  end

  def pig_looses
    puts "pig looses"
  end

  def bricks(n)
    n = n.to_i
    row6 = "     đ§±"
    row5 = "   đ§±đ§±đ§±"
    row4 = " đ§±đ§±đ§±đ§±đ§±"
    row3 = "đ§±đ§±đ§±đ§±đ§±đ§±"
    row2 = "đ§±đ§±    đ§±đ§±"
    row1 = "đ§±đ§±đ·đ·đ§±đ§±"

    # o bĂ© "puts n >= 8 ? row2 : nil", per tenir espai buit
    n >= 23 ? puts(row6) : nil
    n >= 22 ? puts(row5) : nil
    n > 19 && n < 22 ? puts( " "*(9-((n-19)*2)) + "đ§±"*(n - 19)) : nil
    n >= 19 ? puts(row4) : nil
    n > 14 && n < 19 ? puts( " "*(11-((n-14)*2)) + "đ§±"*(n - 14)) : nil
    n >= 14 ? puts(row3) : nil
    n > 8 && n < 14 ? puts( " "*(14-((n-8)*2)) + "đ§±"*(n - 8)) : nil
    n >= 8 ? puts(row2) : nil
    n >= 4 ? puts(row1) : nil
    # case n
    # when n >= 4
    #   puts row1
    # when n >= 8
    #   puts row2
    #   puts row1
    # when n >= 14
    #   puts row3
    #   puts row2
    #   puts row1
    # when n >= 19
    #   puts row4
    #   puts row3
    #   puts row2
    #   puts row1
    # when n >= 22
    #   puts row5
    #   puts row4
    #   puts row3
    #   puts row2
    #   puts row1
    # when n >= 23
    #   puts row6
    #   puts row5
    #   puts row4
    #   puts  row3
    #   puts  row2
    #   puts  row1
    # end
  end
end

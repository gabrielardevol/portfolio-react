class Animation
  def initialize(frame, blown = 7, margin = 5)
    @margin = margin
    @blown = blown
    @frame = frame
    arrays_array
  end

  def arrays_array
    blank = "  "
    blow = "💨"
    left_margin = 0
    (@blown + @margin + 1).times do
      array = []

      left_margin.times do
        array << "  "
      end
      @blown.times do
        array << "💨"
      end
      (@margin+@blown).times do
        array << "  "
      end
      #+ (blow * @blown) + (blank * (@margin - @blown))
      left_margin += 1
      #p array[@blown..(@blown + @margin)].join
      p array[@blown..(@margin + @blown - 1)].join

    end
  end
end

Animation.new(0)

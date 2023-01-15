class Animation
  def initialize(frame, blown = 2, margin = 5)
    @margin = margin
    @blown = blown
    @frame = frame
    arrays_array
  end

  def arrays_array
    blank = "  "
    blow = "💨"
    left_margin = 0
    (@blown + @margin).times do
      array = []

      left_margin.times do
        array << "  "
      end
      @blown.times do
        array << "💨"
      end
      @margin.times do
        array << "  "
      end
      #+ (blow * @blown) + (blank * (@margin - @blown))
      left_margin += 1
      p array[@blown..(@blown + @margin)].join
    end
  end
end

Animation.new(0)

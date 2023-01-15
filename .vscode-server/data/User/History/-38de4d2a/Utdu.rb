class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  attr_accessor :age, :dead, :height, :fruits

  def initialize
    @age = 0
    @dead = false
    @height = 0
    @fruits = 0
  end

  def dead?
    @dead
  end

  def pick_a_fruit!
    if @fruits.positive?
      @fruits -= 1
    end
  end

  def one_year_passes!
    @age += 1
    self.may_die!
    if @dead == false
      self.grow!
      self.produce_fruits!
    end
    # TODO: check if the tree has survived
    # TODO: if so, make the tree grow
    # TODO: and produce fruits
  end

  private

  def may_die!
    if @age < 50
      return @dead = false
    elsif rand(1..(101 - @age)) == 1
      return @dead = true
    end
  end

  def grow!
    if age <= 10
      @height = age
    else
      @height = 10
    end
  end

  def produce_fruits!
    if @age > 5 && @age < 10
      @fruits = 100
    elsif @age > 11 && @age < 15
      @fruits = 200
    else
      @fruits = 0
    end
  end
end

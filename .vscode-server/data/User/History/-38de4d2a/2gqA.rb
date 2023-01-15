class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  attr_accessor :age

  def initialize(age = 0)
    @age = age
    @dead = false
    tall = nil
    @tall = tall

  end

  def age?
    @age
  end

  def aging
    @age += 1
  end

  def height
    if age <= 10
      @tall = age
    else
      @tall = 10
    end
  end

  def fruits
  end

  def dead?
    @dead
  end
  # private

  def one_year_passes!
    if self.may_die! == false
      self.grow!
      self.produce_fruits!
    end
    # TODO: check if the tree has survived
    # TODO: if so, make the tree grow
    # TODO: and produce fruits
  end

  def may_die!
    if @age < 50
      @dead == false
    elsif @age >= 50
      rand(1..(101 - @age)) == 1 ? @dead == false : @dead == true
    end
  end

  def grow!
  end

  def produce_fruits!
  end
end

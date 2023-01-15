class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  attr_accessor :age

  def initialize(age = 0)
    @age = age
    @dead = false
    @height = nil
  end

  def age?
    @age
  end

 # def aging
 #   @age += 1
 # end



  def fruits
  end

  def dead?
    @dead
  end
  # private

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

  def may_die!
    if @age < 50
      @dead == false
    elsif @age >= 50
      rand(1..(101 - @age)) == 1 ? @dead == true : @dead == false
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
  end
end

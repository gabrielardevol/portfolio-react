require_relative "animal"
class Chicken < Animal
  attr_reader :eggs

  def initialize(gender)
    super
    eggs = 0
    @eggs = eggs
    @gender = gender
  end

  def feed!
    super
    @gender == "female" ? @eggs += 2 : @eggs += 0
  end

  def talk
    @gender == "male" ? "cock-a-doodle-doo" : "cluck cluck"
  end
end

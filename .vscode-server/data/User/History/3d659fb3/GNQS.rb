require_relative "animal"
class Chicken < Animal
  def initialize(gender)
    super
    @eggs = 0
    @gender = gender
  end

  def talk
    @gender == "male" ? "cock-a-doodle-doo": "cluck cluck"
  end
end

class Animal
  def initialize(gender = nil)
    @energy = 0
  end

  def feed!
    @energy += 1
  end
end

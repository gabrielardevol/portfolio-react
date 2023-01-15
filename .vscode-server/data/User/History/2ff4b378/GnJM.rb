class Animal
  @@animals

  def initialize(gender = nil)
    @energy = 0
    @@animals << self
  end

  def feed!
    @energy += 1
  end

  def self.all
    @@all
  end
end

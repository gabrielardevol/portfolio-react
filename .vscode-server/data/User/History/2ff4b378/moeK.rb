class Animal
  @@all_animals = []

  def initialize(gender = nil)
    @energy = 0
    @@all_animals << self
  end

  def feed!
    @energy += 1
  end

  def self.all
    @@all_animals
  end
end

class Animal
  @@animals = []

  def initialize
    @energy = 0
    @@animals << self
  end

  def feed!
    @energy += 1
  end

  def self.all
    @@animals
  end
end

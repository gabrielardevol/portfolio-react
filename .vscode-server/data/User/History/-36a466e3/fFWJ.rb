require_relative "animal"
class Cow < Animal
  attr_reader :milk

  def initialize
    super
    @milk = 0
  end

  def feed!
    super
    @milk += 2
  end

  def talk
    "moo"
  end
end

cow = Cow.new
p cow
p cow.feed!
p cow

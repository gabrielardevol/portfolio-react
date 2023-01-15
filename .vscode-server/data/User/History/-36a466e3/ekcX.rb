require_relative "animal"
class Cow < Animal
  def initialize
    super
    @milk = 0
  end

  def feed!
    super
    @milk +=2
  end

end

cow = Cow.new
p cow
p cow.feed!

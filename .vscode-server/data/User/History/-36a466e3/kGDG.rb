require_relative "animal"
class Cow < Animal
  def initialize
    @milk = 0
  end

  def feed!
    super
    @milk +=2
  end

end

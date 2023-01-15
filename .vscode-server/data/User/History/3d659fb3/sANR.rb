require_relative "animal"
class Chicken < Animal
  def initialize
    super
    @eggs = 0
  end
end

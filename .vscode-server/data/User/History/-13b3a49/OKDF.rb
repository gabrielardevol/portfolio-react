# TODO: code the Corn class
class Corn

  attr_reader :grains

  def initialize(grains = 0)
    @grains = grains
  end

  def water!
    @grains += 10
  end

  def ripe?
    @grains >= 15
  end
end

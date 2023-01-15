# TODO: code the Corn class
class Corn
  attr_reader :grains

  def initialize(grains = 0)
    @grains = grains
    @ripe = false
  end

  def water!
    @grains += 10
  end

  def ripe?
    @grains >= 15 ? @ripe == true
  end
end

class Crop
  attr_reader :grains, :corn

  def initialize
    @grains = 0
    @ripe = false
  end

  def ripe?
    # @grains >= 15 ? @ripe == true : @ripe == false
    @grains >= 15
  end
end

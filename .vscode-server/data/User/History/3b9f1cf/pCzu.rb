class Crop
  attr_reader :grains, :corn

  def initialize(grains = 0)
    @grains = grains
    @ripe = false
  end
end

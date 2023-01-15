require_relative "crop"

class Rice < Crop
  attr_reader :grains, :corn

  def initialize(grains = 0)
    @grains = grains
    @ripe = false
  end

  def water!
    @grains += 10
  end

  def ripe?
    @grains >= 15 ? @ripe == true : @ripe == false
  end
end
# TODO: code the Rice class

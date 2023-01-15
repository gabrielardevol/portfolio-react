# TODO: code the Corn class
require_relative "crop"

class Corn < Crop
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

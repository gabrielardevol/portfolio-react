require_relative "crop"

class Rice
  attr_reader :grains, :corn

  def initialize(grains = 0)
    @grains = grains
    @ripe = false
  end

  def water!
    @grains += 5
  end

  def ripe?
    @grains >= 15 ? @ripe == true : @ripe == false
  end

  def transplant!
    @grains += 10
  end
end
# TODO: code the Rice class

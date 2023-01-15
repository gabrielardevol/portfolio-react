# TODO: code the Corn class
class Corn
  def initialize(grains = 0)
    @grains = grains
  end

  def water!
    @grains += 10
  end

  def ripe?
    @grains >= 15 ? true : false
  end

end

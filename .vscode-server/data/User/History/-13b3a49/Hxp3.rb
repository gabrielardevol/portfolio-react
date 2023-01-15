# TODO: code the Corn class
require_relative "crop"

class Corn < Crop
  def water!
    @grains += 10
  end

  def ripe?
    @grains >= 15 ? @ripe == true : @ripe == false
  end
end

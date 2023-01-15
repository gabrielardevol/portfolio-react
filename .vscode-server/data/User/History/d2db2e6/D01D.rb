require_relative "crop"

class Rice < Crop
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

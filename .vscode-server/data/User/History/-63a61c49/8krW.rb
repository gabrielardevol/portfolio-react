class Vocaloid
  def initialize(attributes = {})
    @name = attributes[:name]
    @color = attributes[:color]
  end
end

miku = Vocaloid.new({name: "Miku", color: "turquoise", age: "16"})
p miku
p miku.name
p miku.age

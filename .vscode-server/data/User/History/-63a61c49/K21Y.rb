class Vocaloid
  attr_reader :name, :color, :company
  def initialize(attributes = {})
    @name = attributes[:name]
    @color = attributes[:color]
    @company = attributes[:company] || "crypton"
  end
end

miku = Vocaloid.new({name: "Miku", color: "turquoise", age: "16"})
p miku
p miku.name
p miku.color
p miku.company

class Vocaloid
  initialize(attributes = {})
    @name = attributes[:name]
    @color = attributes[:color]
  end
end

miku = Vocaloid.new({name: "Miku", color: "turquoise", age: "16"})

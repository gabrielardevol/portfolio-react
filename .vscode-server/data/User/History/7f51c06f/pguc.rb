def tag(tag_name, attributes = nil)
  puts  "<#{tag_name}#{attributes[0]}> #{yield} <#{tag_name}>"
  # TODO: Build HTML tags around content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
end


tag("h1", ["href", "www.g.com"]) do
  "hello"
end

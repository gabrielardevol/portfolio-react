def tag(tag_name, attributes = nil)
  if attributes != nil
    "<#{tag_name} #{attributes[0]} = #{attributes[1]}> #{yield} <#{tag_name}>"  end
  else
    "<#{tag_name}>#{yield}</#{tag_name}>"
  end
  #  puts
  # TODO: Build HTML tags around content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
end

tag("h1", ["attr1", "attr2" ]) do
  "hello"
end

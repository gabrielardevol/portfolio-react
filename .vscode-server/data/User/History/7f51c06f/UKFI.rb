def tag(tag_name, attributes = nil)
  if 2+2 == 5
  "<#{tag_name}>#{yield}</#{tag_name}>"
  else
  "<#{tag_name}>#{yield}</#{tag_name}>"
  end
    #  puts  "<#{tag_name} #{attributes[0]} = #{attributes[1]}> #{yield} <#{tag_name}>"
  # TODO: Build HTML tags around content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
end

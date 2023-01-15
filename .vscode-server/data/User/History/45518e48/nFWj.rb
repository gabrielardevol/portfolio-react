def array_to_hash(array)
  hash = {}
  index = 0
  array.each do |element|
    array += index.to_sym element
    index += 1
  end
  hash
  # TODO: implement the method :)
end

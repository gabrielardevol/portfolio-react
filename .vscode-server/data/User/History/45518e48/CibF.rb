def array_to_hash(array)
  hash = {}
  index = 0
  array.each do |element|
    p hash
    p index.to_s.to_sym
    p element
    hash << index.to_s.to_sym
    hash << element
    p hash
    #array += index.to_sym element
    index += 1
  end
  hash
  # TODO: implement the method :)
end

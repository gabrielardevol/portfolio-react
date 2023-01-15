def array_to_hash(array)
  hash = {}
  index = 0
  p index.to_s.to_sym

  array.each do |element|
    p element
    p index.to_s.to_sym

    #array += index.to_sym element
    index += 1
  end
  hash
  # TODO: implement the method :)
end

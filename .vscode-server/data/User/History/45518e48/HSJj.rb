def array_to_hash(array)
  hash = {}
  index = 0
  p index.to_s
  index_s = index.to_s
  p index_s.to_sym

  array.each do |element|

    #array += index.to_sym element
    index += 1
  end
  hash
  # TODO: implement the method :)
end

def array_to_hash(array)
  hash = {}
  index = 0
  if block.given?
    yield
  else
  array.each_with_index do |element|
    hash[index.to_s] = element
    index += 1
    end
  end
  hash
  # TODO: implement the method :)
end

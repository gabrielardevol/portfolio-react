def array_to_hash(array)
  hash = {}
  index = 0
  array.each do |element|
    if block.given?
    else
    hash[index.to_s] = element
    index += 1
    end
  end
  hash
  # TODO: implement the method :)
end

def array_to_hash(array)
  hash = {}
  array.each do |element, index|
    hash << {index.to_sym=>element.to_s}
  end
  hash
  # TODO: implement the method :)
end

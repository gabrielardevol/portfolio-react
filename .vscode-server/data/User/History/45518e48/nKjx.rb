def array_to_hash(array)
  hash = {}
  array.each_with_index do |element, index|
    hash << {index.to_sym=>element.to_s}
  end
  # TODO: implement the method :)
end

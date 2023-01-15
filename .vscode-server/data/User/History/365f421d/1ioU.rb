def block_splitter

  yield.each do |element|
  if element.true?
    p element
  end
  end

  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.
end

block_splitter {["a","b","c","d", "e", "f"]}

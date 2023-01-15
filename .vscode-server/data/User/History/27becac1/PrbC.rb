def size_splitter(array, size)
  selected_words = []
  other_words = []
  words = []
  array.each do |word|
    if word.length == size
      selected_words << word
    else
      other_words << word
    end
  end
  selected_words = selected_words.sort
  other_words = other_words.sort
  words << selected_words
  words << other_words
  return words
  # TODO: Return an array of two arrays, the first containing
  #       words of length `size`, the second containing all the other words
  #       In addition to this split, each array should be *sorted*.
end
def bblock_splitter(array)
  selected_words = []
  other_words = []
  words = []
  array.each do |word|
    yield
   if word.true?
    selected_words << word
   else
    other_words << word
   end
  end
  words << selected_words
  words << other_words
  return words
  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.
end

def block_splitter
  true_elements = []
  false_elements = []
  yield.each do |element|
    if element.true?
      true_elements << elemens
    else
      false_elements << element
    end
  end
return [true_elements, false_elements]
  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.
end

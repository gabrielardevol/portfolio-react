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

result = block_splitter(beatles) { |beatle| beatle.start_with?("P") }


def block_splitter(array)
  true_words = []
  false_words = []
  words = []
 # array.each do |word|
 yield
 if true
 true_words << word
 else
  false_words << word
  end
end
  true_words = true_words.sort
  false_words = false_words.sort
  words << true_words
  words << false_words
  return words
  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.
end

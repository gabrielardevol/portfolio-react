def block_splitter (array)
 # true_elements = []
 # false_elements = []
 yield

  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.
end

# block_splitter {["a","b","c","d", "e", "f"]}
block_splitter(%w(a b c)) { false }

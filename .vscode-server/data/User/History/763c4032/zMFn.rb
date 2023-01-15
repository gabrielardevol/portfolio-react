require_relative "wagon_sort"

list = []
puts "Type a student name:"

student = gets.chomp
until student == ""
  list << student
  puts "Type another student name or press enter to finish:"
  student = gets.chomp
end
puts "Congratulations! Your Wagon has #{list.length} students:"
p ordered_list = wagon_sort(list)
p last_element = ordered_list[-1]
p cropped_list = ordered_list.delete(-1)

wagon_sort(list).delete(-1)
p "#{cropped_list.join(', ')}"


# TODO: ha de dir "pepito, fulano and mengano ;;;; diu: "pepito, fulano, megano"
# TODO: tal com ara està, eliminar l'últim element de l'array i afegir-lo després amb #{}



# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  https://ruby-doc.org/core-2.7.5/Kernel.html#method-i-gets
#       - `chomp`: https://ruby-doc.org/core-2.7.5/String.html#method-i-chomp



# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list

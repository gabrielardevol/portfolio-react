require_relative "interface_c"
puts "welcome to interface"
puts "c for create"
interface = gets.chomp
if interface == "c"
  p interface_c
end

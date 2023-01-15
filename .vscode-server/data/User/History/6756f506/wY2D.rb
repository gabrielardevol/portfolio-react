require "csv"

filepath = "lib/prova.csv"

array = []

CSV.open(filepath, "wb") do |csv|
  csv << ["First Nama", "Last Name", "Instrument"]
end

CSV.foreach(filepath) do |row|
  # Here, row is an array of columns
  puts "#{row[0]} | #{row[1]}"
  array << row
end
 p array

array << "hola"


CSV.open(filepath, "wb") do |csv|
  array.each do |recipe|
  csv << recipe
end

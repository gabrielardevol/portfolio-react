require "csv"

filepath = "lib/prova.csv"

array = [["hola", "adeu"],["holaa", "adeuu"]]

CSV.open(filepath, "wb") do |csv|
  array.each do |recipe|
  csv << recipe
  end
end

CSV.foreach(filepath) do |row|
  # Here, row is an array of columns
  puts "#{row[0]} | #{row[1]}"
  array << row
end

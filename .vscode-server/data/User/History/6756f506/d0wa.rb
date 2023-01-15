require "csv"

filepath = "lib/prova.csv"

CSV.open(filepath, "wb") do |csv|
  csv << ["First Nama", "Last Name", "Instrument"]
end

CSV.foreach(filepath) do |row|
  # Here, row is an array of columns
  puts "#{row[0]} | #{row[1]}"
end

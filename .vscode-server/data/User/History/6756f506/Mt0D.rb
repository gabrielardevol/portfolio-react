require "csv"

filepath = "lib/prova.csv"

CSV.open(filepath, "wb") do |csv|
  csv << ["First Nama", "Last Name", "Instrument"]
end

CSV.foreach(filepath, headers: :first_row) do |row|
  puts "#{row[0]}"
end

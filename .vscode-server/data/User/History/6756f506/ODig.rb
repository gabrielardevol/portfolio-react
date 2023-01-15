require "csv"

filepath = "lib/prova.csv"

CSV.open(filepath, "wb") do |csv|
  csv << ["First Nama", "Last Name", "Instrument"]
end

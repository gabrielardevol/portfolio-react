require "csv"

filepath = "lib/prova.csv"

CSV.open(filepath, "wb") do |csv|
  csv << ["First Name", "Last Name", "Instrument"]
end

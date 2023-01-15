require "csv"

filepath = "data/beatles.csv"

CSV.open(filepath, "wb") do |csv|
  csv << ["First Name", "Last Name", "Instrument"]
end

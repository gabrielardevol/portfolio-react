require "csv"

filepath = "lib/prova.csv"

array = [["hola", "adeu"]["holaa", "adeuu"]]

CSV.open(filepath, "wb") do |csv|
  array.each do |recipe|
  csv << recipe
  end
end

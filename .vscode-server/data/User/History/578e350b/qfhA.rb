require "nokogiri"
require "open-uri"
url = "https://ca.wikipedia.org/wiki/Porrera"
html = URI.open(url)
doc = Nokogiri::HTML(html)

p doc.search("h1").text.strip

# p doc.search("h2")[0].text.strip

h2 = doc.search("h2")

# h2.each do |element|
#  puts element
# end

p h2[0].text

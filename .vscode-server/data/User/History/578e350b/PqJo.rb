require "open-uri"
url = "https://ca.wikipedia.org/wiki/Porrera"
html = URI.open(url)
doc = Nokogiri::HTML(html)

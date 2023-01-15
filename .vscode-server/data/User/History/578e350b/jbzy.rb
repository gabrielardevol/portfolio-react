# require "open-uri"
# url = "https://ca.wikipedia.org/wiki/Porrera"
# html = URI.open(url)
# doc = Nokogiri::HTML(html)

require "open-uri"

url = "https://www.lewagon.com" # the url of the web page you want to scrape
html = URI.open(url) # open the html of the page
doc = Nokogiri::HTML(html) # create a nokogiri doc based on that html

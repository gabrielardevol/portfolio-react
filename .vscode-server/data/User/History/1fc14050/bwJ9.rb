require "open-uri"
require "nokogiri"

class Scrapper
  def scrap(ingredient)
    # url = "https://www.allrecipes.com/search?q=#{ingredient}"
    url = "strawberry.html"
    html = URI.open(url)
    doc = Nokogiri::HTML(html)
    # TODO
    # trobar el selector
    # demanar els 5 primers
    # "displayejar-los" (view?)
    # assignar-los un índex
    # scrapejar-ne l'href
    # obrir el link de la recepta i scrapejar-ne la descripció
    #"comp mntl-card-list-items mntl-document-card mntl-card card card--no-image"
    elements = doc.search(".card")
    elements.count
    index = 0
    @array = []
    5.times do
      @array << elements[index].text.strip.delete("\n")
      index += 1
    end
    @array
  end

  def import(recipe_index)
    p recipe_index
  end
end

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
    @elements = doc.search(".card")
    index = 0
    @array = []
    5.times do
      @array << @elements[index].search(".card__title-text").text
      index += 1
    end
    @array
  end
# curl --silent "https://www.allrecipes.com/search?q=strawberry" > strawberry.html
  def import(recipe_index)
    title = @array[recipe_index.to_i - 1]

    # url = "#{@elements[recipe_index.to_i - 1]["href"]}"
    url = "strawberry_recipes.html"
    html = URI.open(url)
    doc = Nokogiri::HTML(html)
    content = doc.search(".article-content").text.strip


  end
end

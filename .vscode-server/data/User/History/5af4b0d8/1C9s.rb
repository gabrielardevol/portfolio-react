require "pry-byebug"

class Vocaloid
  def initialize(name, company, edition)
    @name = name
    @company = company
    @edition = edition
    @songs = []
  end

  def song(title)
    @songs << title
  end
end

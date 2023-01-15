require "sqlite3"
require_relative "view"

class Controller
  def initialize(db = "db.db")
    @db = SQLite3::Database.new(db)
    @view = View.new

  end

  def display
    p @db.execute("SELECT * FROM people, works")
  end

  def add



end

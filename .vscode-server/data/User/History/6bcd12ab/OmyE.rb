require "sqlite3"

class Controller
  def initialize(db = "db.db")
    @db = SQLite3::Database.new(db)
  end

  def display
    p @db.execute("SELECT * FROM people, works")
  end
end

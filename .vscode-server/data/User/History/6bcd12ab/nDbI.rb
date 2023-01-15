require "sqlite3"
require_relative "view"

class Controller
  def initialize(db = "db.db")
    @db = SQLite3::Database.new(db)
    @view = View.new
  end
  def display_options
    @view.display_options
  end
  def display
    @db.execute("SELECT * FROM people, works")
  end

  def add
    name = @view.ask_for("name")
    date_of_birth = @view.ask_for("date of birth")
    defunction_date = @view.ask_for("defunction date")

  end

end

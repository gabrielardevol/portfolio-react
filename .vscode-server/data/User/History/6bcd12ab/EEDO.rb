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
    value = 'yolanda'
    name = @view.ask_for("name")
    date_of_birth = @view.ask_for("date of birth")
    defunction_date = @view.ask_for("defunction date")
    description = @view.ask_for("description")
   # @db.execute("INSERT INTO people (name, birth, death, description)
   #             VALUES (#{name}, #{date_of_birth}, #{defunction_date}, #{description}); ")
    @db.execute("INSERT INTO people (name)
                VALUES (" + value + "; ")

  end

end

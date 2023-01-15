require 'sqlite3'
db = SQLite3::Database.new("db.db")

p db.execute("SELECT *")

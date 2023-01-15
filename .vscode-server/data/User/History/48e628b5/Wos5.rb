require 'sqlite3'
db = SQLite3::Database.new("db.db")
db.execute("SELEcT *")

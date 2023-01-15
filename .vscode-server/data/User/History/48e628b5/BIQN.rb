require 'sqlite3'
db = SQLite3::Database.new("db.sql")
db.execute("SELECT * FROM doctors")

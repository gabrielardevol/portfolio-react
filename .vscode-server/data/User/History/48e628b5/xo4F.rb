require 'sqlite3'
db = SQLite3::Database.new("db.sql")
p db.execute("SELECT * FROM doctors;")

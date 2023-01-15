require 'sqlite3'
db = SQLite3::Database.new("jukebox.sqlite")
p db.execute("SELECT * FROM tracks")[0]

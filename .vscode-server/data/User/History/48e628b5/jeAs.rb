require 'sqlite3'
db = Sqlite3::Database.new("db.sql")
p db

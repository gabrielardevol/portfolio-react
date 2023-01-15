require 'sqlite3'
db = SQLite3::Database.new("db.sql")
p db.execute("CREATE TABLE `doctors` (
  `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` TEXT,
  `age` INTEGER,
  `specialty` TEXT
);")

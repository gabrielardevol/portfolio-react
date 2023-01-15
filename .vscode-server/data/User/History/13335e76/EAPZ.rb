require 'sqlite3'
db = SQLite3::Database.new("db.db")

db.execute("DELETE * FROM people")
db.execute("CREATE TABLE `people` (
  `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` TEXT,
  `birth` DATE,
  `death` DATE,
  `description` TEXT
);")

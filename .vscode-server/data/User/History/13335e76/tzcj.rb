require 'sqlite3'
db = SQLite3::Database.new("db.db")

db.execute("DROP TABLE `people` ")
db.execute("CREATE TABLE `people` (
  `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` TEXT,
  `birth` DATE,
  `death` DATE,
  `description` TEXT
);")
db.execute("INSERT INTO people (name, birth, description)
  VALUES ('Gabriel', 1996-11-13, 'sóc jo')
  ")

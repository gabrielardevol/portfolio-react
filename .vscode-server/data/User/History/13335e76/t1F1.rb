#is seed.rb meant to set the schema?
require 'sqlite3'
db = SQLite3::Database.new("db.db")
db.execute("DROP TABLE `people`")
db.execute("DROP TABLE `works`")


db.execute("CREATE TABLE `people` (
  `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` TEXT,
  `birth` DATE,
  `death` DATE,
  `description` TEXT
);")
db.execute("INSERT INTO people (name, birth, description)
  VALUES ('Gabriel', '1996-11-13', 'sóc jo')
  ")

  db.execute("CREATE TABLE `works` (
    `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
    `name` TEXT,
    `birth` DATE,
    `death` DATE,
    `description` TEXT
  );")
  db.execute("INSERT INTO works (name, birth, description)
  VALUES ('Gabriela', '1996-11-13', 'sóc jo')
  ")

  db.execute("CREATE TABLE `people` (
    `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
    `name` TEXT,
    `description` TEXT
  );")

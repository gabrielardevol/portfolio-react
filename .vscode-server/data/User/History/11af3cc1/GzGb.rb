require 'sqlite3'

def artist_count(db)
  db.execute("SELECT * FROM artists").count
  # TODO: use `db` to execute an SQL query against the database.
end

def number_of_rows(db, table_name)
  # TODO: count number of rows in table table_name
  db.execute("SELECT * FROM #{table_name}").count
end

def sorted_artists(db)
  # TODO: return array of artists' names sorted alphabetically
  db.execute("SELECT name FROM artists")
end

def love_tracks(db)
  # TODO: return array of love songs' names
end

def long_tracks(db, min_length)
  # TODO: return an array of tracks' names verifying: duration > min_length (minutes) sorted by length (ascending)
end

require 'sqlite3'
database = SQLite3::Database.new("lib/db/jukebox.sqlite")

p database.execute

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist.
  db.execute("SELECT tracks.name, albums.title, artists.name
    FROM albums
    JOIN tracks ON tracks.album_id = albums.id
    JOIN artists ON albums.artist_id = artists.id")
end

def stats_on(db, genre_name)
  # TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
  hash = Hash.new
  array = db.execute("SELECT milliseconds FROM tracks
    JOIN genres ON tracks.genre_id = genres.id
    WHERE genres.name = #{genre_name}
    ")
end

def top_five_artists(db, genre_name)
  # TODO: return list of top 5 artists with the most songs for a given genre.
end

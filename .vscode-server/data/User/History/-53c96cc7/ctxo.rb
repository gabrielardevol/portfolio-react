require 'sqlite3'
database = SQLite3::Database.new("lib/db/jukebox.sqlite")
database.execute("SELECT count(id), avg(milliseconds) FROM tracks")

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist.
  db.execute("SELECT tracks.name, albums.title, artists.name
    FROM albums
    JOIN tracks ON tracks.album_id = albums.id
    JOIN artists ON albums.artist_id = artists.id")
end

def stats_on(db, genre_name)
  # TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)

#  data = db.execute("
#SELECT g.name, count(t.id), avg(t.milliseconds)
 # FROM tracks t JOIN genres g
  #WHERE t.genre_id = g.id
  #AND g.name = #{genre_name}").flatten

  #return {
  #  genre: data[0], tracks_number: data[1], average_length: data[2]
  #}

  stat = db.execute(%(
    SELECT genres.name, COUNT(tracks.id), ROUND(AVG(milliseconds) / 60000, 2)
    FROM tracks
    INNER JOIN genres ON genres.id = tracks.genre_id
    WHERE genres.name = '#{genre_name}'
  )).flatten
  return {
    category: stat[0],
    number_of_songs: stat[1],
    avg_length: stat[2]
  }
end

def top_five_artists(db, genre_name)
  # TODO: return list of top 5 artists with the most songs forr a given genre.
  - donat el gènere, accedir als tracks
  - des dels tracks accedir al compositor
  - ordenar tracks per compositor


end

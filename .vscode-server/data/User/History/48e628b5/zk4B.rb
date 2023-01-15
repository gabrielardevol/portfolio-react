require_relative 'database'

p db.execute("SELECT * FROM people")

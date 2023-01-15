# You can use a global variable, DB, which
# is an instance of SQLite3::Database
# NO NEED TO CREATE IT, JUST USE IT.

class Post
  # TODO
  def find(id)
  end

  def all
    db.execute("SELECT * FROM posts")
  end
end

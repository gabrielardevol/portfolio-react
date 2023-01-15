# You can use a global variable, DB, which
# is an instance of SQLite3::Database
# NO NEED TO CREATE IT, JUST USE IT.

class Post
  # TODO
  attr_accessor :title, :url
  attr_reader :id

  def initialize(hash = {})
    @title = hash[:title]
    @url = hash[:url]
    @votes = hash[:votes]
    @id = hash[:id]
  end

  def find(id)
    hash = db.execute("SELECT * FROM posts
      WHERE id = #{id}")
      Post.new
  end

  def all
    db.execute("SELECT * FROM posts")
  end
end

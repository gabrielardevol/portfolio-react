require 'sqlite3'
db = SQLite3::Database.new("posts_spec.db")
p db.execute("SELECT * FROM posts")

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

  def find(id, db)
    db.execute("SELECT * FROM posts")[1]
  #    WHERE id = #{id}")

  end

  def all
    db.execute("SELECT * FROM posts")
  end
end


post = Post.new
p post.find(1, db)

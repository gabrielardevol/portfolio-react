require 'sqlite3'
db = SQLite3::Database.new("posts_spec.db")

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
    db.execute("SELECT * FROM posts") do |row|
      p row[0]
    end
  #    WHERE id = #{id}")

  end

  def all
    db.execute("SELECT * FROM posts")
  end
end


post = Post.new
post.find(1, db)

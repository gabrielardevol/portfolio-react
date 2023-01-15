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

  def find(db, id)
    db.execute("SELECT * FROM posts WHERE id = #{id}") do |row|
      post = Hash.new
      post[:id] = row[0]
      post[:title] = row[1]
      post[:url] = row[2]
      post[:votes] = row[3]
      p Post.new(post)
    end
  #    WHERE id = #{id}")
  end

  def all(db)
    posts = []
    db.execute("SELECT * FROM posts") do |row|
      post = Hash.new
      post[:id] = row[0]
      post[:title] = row[1]
      post[:url] = row[2]
      post[:votes] = row[3]
      posts << Post.new(post)
    end
    p posts
    return posts
  end
end


post = Post.new
post.all(db)
post.find(db, 2)
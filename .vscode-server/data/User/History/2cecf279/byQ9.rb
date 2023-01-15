# You can use a global variable, DB, which
# is an instance of SQLite3::Database
# NO NEED TO CREATE IT, JUST USE IT.
require 'sqlite3'

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

require 'sqlite3'

class Post
  DB = SQLite3::Database.new("posts_spec.db")

  attr_reader :id, :votes
  attr_accessor :title, :url

  def initialize(attributes = {})
    @id = attributes[:id]
    @url = attributes[:url]
    @votes = attributes[:votes] || 0
    @title = attributes[:title]
  end

  def find(id)
    DB.results_as_hash = true
    first_row = DB.execute("SELECT * FROM posts WHERE id = ?", id).first
    build_record(first_row) if first_row
  end

  def self.all
    DB.results_as_hash = true
    DB.execute("SELECT * FROM posts").map { |row| build_record(row) }
  end

  def self.build_record(row)
    # row is a hash, keep only string keys (column names), and symbolize them.
    attributes = {
      id: row["id"],
      url: row["url"],
      votes: row["votes"],
      title: row["title"]
    }
    Post.new(attributes)
  end

  def test
    all()
  end
end

db = SQLite3::Database.new("posts_spec.db")
p db
post = Post.new
p post.find(1)

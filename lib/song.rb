class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    self.all << song
    song
  end

  def new_by_name (title)
    song = self.new
    song.name = title
    song
  end

  def create_by_name (name)
    song = self.new
    song.name = name
    self.all << song
  end
end

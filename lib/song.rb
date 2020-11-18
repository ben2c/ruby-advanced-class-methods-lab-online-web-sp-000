require 'pry'

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

  def self.new_by_name (name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name (name)
    song = self.new
    song.name = name
    self.all << song
    song
  end

  def self.find_by_name (name)
    self.all.find {|song| song.name == name}
  end

  def self.find_or_create_by_name (name)
    result = self.find_by_name(name)
    if result
      result
    else
      self.create_by_name(name)
    end
  end

  def self.alphabetical
    sorted = self.all.sort_by {|word| word.name}
    sorted
  end

  def self.new_from_filename (title)
    rows = title.split(" - ")
    rows[1] = rows[1].slice! ".mp3"
    binding.pry
  end

end

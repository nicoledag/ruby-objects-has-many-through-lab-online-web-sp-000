require 'pry'

class Artist

attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def new_song(name, genre)


  song = Song.new(name, genre)
  name.artist = self

  end

end

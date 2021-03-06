require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    # @@all << self
  end

  def add_song(song)
    @songs << song
    # song.artist = self
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.find(name)
		@@all.find {|artist| artist.name == name}
	end

  def self.create(name)
		self.new(name).tap {|artist| artist.save}
	end

  def self.all
    @@all
  end

  def save
    @@all << self
    # binding.pry
  end

  def print_songs
    # binding.pry
    songs.each {|song| puts song.name}
  end






end

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs.each {|song| song}
  end

  def save
    if !(@@all.include?(self))
      @@all << self
    end
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    if self.all.detect{|artist| artist.name == name}
      self.all.detect{|artist| artist.name == name}
    else
      Artist.new(name)
    end
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

  def self.all
    @@all
  end

end

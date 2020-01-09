class Genre 
  attr_accessor :artist, :song, :name 
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def songs
    Song.all.select {|song| song.genre == self}
  end 
  def artists 
    Artist.all.map {|artist|
      song.artist
    }
  end 
  def self.all 
    @@all
  end 
end 
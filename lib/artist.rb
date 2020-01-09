require 'pry'
class Artist
  attr_accessor :name,:song, :genre 
  @@all = []
  def initialize (name)
    @name = name 
    @@all << self 
  end
  
  def new_song(name,genre)
  Song.new(name,self,genre)
  end
  
  def songs
  Song.all.select{|song| song.artist == self}
  end 
  
  def genres 
    Genre.all.map {|genre|
      song.genre
    }
  end 
  
  def self.all
    @@all
  end 
end 

class Artist 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def Artist.all
    @@all 
  end 
  
  def songs(song)
    song.artist = self 
  end 
end 

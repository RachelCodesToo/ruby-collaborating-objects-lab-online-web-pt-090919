class Song 
  
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 

  def self.all
    @@all
  end 
  
  def self.new_by_filename(filename)
    artist, song = filename.split(' - ')
    new_song = new(song)
    new_song.artist_name = artist
    new_song
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_by_name(name)
    artist.add_song(self)
  end 

end 

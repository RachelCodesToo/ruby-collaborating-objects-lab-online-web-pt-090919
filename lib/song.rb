class Song 
  
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
  end 

  def Song.all
    @@all 
  end 
  


end 

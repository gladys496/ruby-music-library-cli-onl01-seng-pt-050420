class Genre 
  
  extend  Concerns::Findable
  
  attr_accessor :name 
  attr_reader :songs
  
  @@all = []

  def initialize(name)
    @name = name 
    @songs = []
  end 
  
   def self.all 
    @@all 
  end 
  
  def self.destroy_all 
    all.clear 
  end 
  
   def save 
 self.class.all << self 
  end 
  
   def self.create(name)
    song = new(name)
    song.save 
    song 
  end 
  
  def artists  
    songs.map(&:artist).uniq 
  end 
  
end 
  
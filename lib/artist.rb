class Artist
  
  attr_accessor :name, :songs
  @@all = []  

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def self.find_or_create_by_name(artist)
   if self.all.include?(artist)
     self.artist
   else 
     Artist.new(artist)
  end
end

def print_songs
  self.songs.each {|song| song.name}
end
end
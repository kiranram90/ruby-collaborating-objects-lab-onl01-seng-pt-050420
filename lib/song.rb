class Song 
  
  @@all = []
  
  attr_accessor :name, :artist, :artist_name
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def new_by_filename(file_name)
  end
  
  
  
end
class Song 
 @@count = 0 
 @@artists = []
 @@genres = []
 @@genre_count = {}
 @@artist_count = {}
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@count += 1 
    @@genres << genre
  end
  
  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count.keys.include?(genre)
        @@genre_count[genre] += 1
      else 
        @@genre_count[genre] = 1
    end
  end
    @@genre_count
  end 
  
  def self.artist_count
    @@artists.each do |artists|
      if @@artist_count.key.include?(artists)
        @@artist_count[artists] += 1 
      else 
        @@artist_count[artists] = 1
      end
    end 
    @@artist_count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.count
    @@count
  end
  
  def self.genres 
    @@genres.uniq
  end

end
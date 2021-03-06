class Song

  attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = [] #keeps track of all genres

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

#keeps track of all songs and each individual song has a genre
  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}
    #iterate through @@genres
    @@genres.each do |genre|
      #if the key already exists
        if genre_hash[genre]
      #add 1 to the value
          genre_hash[genre] += 1
      #if it doesnt
        else
      #create a key for each genre, set the value for 1
          genre_hash[genre] = 1
        end
      end
      genre_hash
    end
end

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1
  end

  def self.count
    return @@count
  end

  def self.genres
    new_array = []
    new_array = @@genres.uniq
    new_array
  end

  def self.artists
    new_array = []
    new_array = @@artists.uniq
    new_array
  end

  def self.genre_count
    new_hash = {}
    @@genres.each do |genre|
      if new_hash.include?(genre)
        then new_hash[genre] += 1
      else new_hash[genre] = 1
      end
    end
  end


end

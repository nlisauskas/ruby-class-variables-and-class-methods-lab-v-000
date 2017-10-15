class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def count
    return @@count
  end

  def genres
    new_array = []
    new_array = @@genres.uniq
    new_array
  end


end

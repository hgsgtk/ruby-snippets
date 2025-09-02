class Song
  attr_reader :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def play
    puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
  end

  def each_filename
    basename = "#{name}-#{artist}".gsub(" ", "-").downcase
    extensions = [".mp3", ".m4a", ".ogg"]
    extensions.each { |ext| yield basename + ext }
  end
end

class Playlist
  include Enumerable

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def each
    @songs.each { |song| yield song}
  end

  def play_songs
    @songs.each { |song| song.play }
  end

  def each_tagline
    @songs.each { |song| yield "#{song.name} - #{song.artist}" }
  end

  def each_by_artist(artist)
    @songs.select { |song| song.artist == artist}.each { |song| yield song }
  end
end

song1 = Song.new("Okie", "Micheal", 4)
song2 = Song.new("Hello", "Micheal", 5)
song3 = Song.new("Hey", "Micheal", 6)

playlist = Playlist.new("My Playlist")
playlist.add_song(song1)
playlist.add_song(song2)
playlist.add_song(song3)

playlist.each { |song| song.play }
playlist.play_songs

okie_songs = playlist.select { |song| song.name.include?("Okie") }
p okie_songs

non_okie_songs = playlist.reject { |song| song.name =~ /Okie/ }
p non_okie_songs

p playlist.any? { |song| song.artist == "Micheal"}
p playlist.detect { |song| song.artist == "Micheal"}

song_labels = playlist.map { |song| "#{song.name} - #{song.artist}" }
puts song_labels

total_duration = playlist.reduce(0) { |sum, song | sum + song.duration }
puts total_duration

playlist.each_tagline { |tagline| puts tagline }
playlist.each_by_artist("Hank") { |song| song.play }

song1.each_filename { |filename| puts filename }

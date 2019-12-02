class MusicLibraryController

  attr_accessor :path

  def initialize(path = './db/mp3s')
    @path = path
    importer = MusicImporter.new(path)
    importer.import
  end

  def call
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a particular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
    puts "What would you like to do?"
    user_input = gets.strip

    case user_input
    when "list songs"
      self.list_songs
    when "list artists"
      self.list_artists
    when "list genres"
      self.list_genres
    when "list artist"
      self.list_songs_by_artist
    when "list genre"
      self.list_songs_by_genre
    when "play song"
      self.play_song
    when "exit"
      'exit'
    else
      call
    end
  end

  # def list_songs
  #   Song.all.sort {|a,b| a.name <=> b.name}.each.with_index(1) do |song, i|
  #     puts "#{i}. #{song.artist.name} - #{song.name} - #{song.genre.name}"
  #   end
  # end

  def list_songs
    Song.all.sort{|a, b| a.name <=> b.name}.each_with_index do |s, i|
      puts "#{i+1}. #{a.name}"
    end
  end

  # def list_artists
  #   artists = Artist.all.sort {|a,b| a.name <=> b.name}
  #   artists.each.with_index(1) {|artist, i| puts "#{i}. #{artist.name}"}
  # end

  def list_artists
    Artist.all.sort{|a, b| a.name <=> b.name}.each_with_index do |a, i|
      puts "#{i+1}. #{g.name}"
    end
  end

end

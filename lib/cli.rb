class CommandLineInterface
  def gets_user_input
    puts "We are your source for songs, artists, and albums"
    puts "Enter your search term and select from the list of Artists by their number:"
    list
    gets.chomp
  end

  def find_artist_by_name(input)
    Artist.find_by(name: input)
  end

  def find_by_artist_id(id)
    Artist.find(id)
  end

  def print_all_artist_names
    Artist.all.map do |artist|
      artist.name
    end
  end

  def gets_user_input_for_artists
    puts "Choose an artist from the list above"
    gets.chomp
  end

  def exit_app
    puts "Goodbye"
  end

  def print_artists_and_albums(artist)
    puts "These are the tracks:"
    artist.tracks.map do |track|
      p track.name
    end
    puts "These are the albums:"
    artist.albums.map do |album|
      p album.title
    end
  end

  def print_tracks(artist)
    print_artists_and_albums(artist)
  end

  def run
    input = gets_user_input
    if !Artist.exists?(input.to_i)
      puts "Enter the correct number from the list."
      run
    else
      artist = find_by_artist_id(input.to_i)
      print_tracks(artist)
    end
  end

  def list
    Artist.all.each.with_index(1) do |artist, i|
      puts "#{artist.id}. #{artist.name}"
    end
  end
end

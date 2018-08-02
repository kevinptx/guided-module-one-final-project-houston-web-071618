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

  #write an if statement
  def gets_user_input_for_artists
    puts "Choose an artist from the list above"
    gets.chomp
  end

  def exit_app
    puts "Goodbye"
  end

  #artist = find_artist_by_name(input)
  #check to see if artist is in the artist array
  #name = artist
  #include is receiving an empty array from artist.
  def print_tracks(artist)
    if !Artist.all.include?(artist)
      p "No Artist Available."
      puts "Here are the available artist names and albums you can choose from: " + "#{print_all_artist_names}"
      #input = gets.downcase.strip
      #print_tracks(input)
    else
      puts "These are the tracks:"
      artist.tracks.map do |track|
        p track.name
      end
      puts "These are the albums:"
      artist.albums.map do |album|
        p album.title
      end
    end
  end

  def run
    input = gets_user_input
    artist = find_by_artist_id(input.to_i)
    #find find_artist_by_name is returning an empty array for some reason. fix that.
    print_tracks(artist)
  end

  #find artist with the name of the input

  # Artist.where('lower(name) = ?', input.downcase).first

  def list
    Artist.all.each.with_index(1) do |artist, i|
      puts "#{artist.id}. #{artist.name}"
    end
  end
end

# "Select an artist"

# 1. Artist1
# 2. Artist2
# 3. Artist3
# ...

# User picks "1"

# These are the tracks for Artist 1:
# These are the albums for Artist 1:

class CommandLineInterface

def gets_user_input
  puts "We are your source for songs, artists, and albums"
  puts "Enter your search term:"
  gets.chomp
  end

  def find_artist_by_name(input)
    Artist.find_by(name: input)
  end

  def run
  input = gets_user_input
  print_tracks(input)
end

#find artist with the name of the  input
def print_tracks(input)
  artist = find_artist_by_name(input)
  artist.tracks.map do |track|
    p track.name
   end
  # Artist.where('lower(name) = ?', input.downcase).first
  end

  def print_artists(input)

  end

  def print_album(input)
  end

end

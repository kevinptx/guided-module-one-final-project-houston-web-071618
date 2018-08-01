class CommandLineInterface

def gets_user_input
  puts "We are your source for songs, artists, and albums"
  puts "Enter your search term:"
  gets.chomp
  end


  def find_artist_by_name(input)
    Artist.find_by(name: input)
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

# def run
# input = gets_user_input
# print_tracks(input)
# end
def exit_app
  puts "Goodbye"
end

def run(songs)
  input = ""
  while input

input = gets_user_input
print_tracks(input)
end


#find artist with the name of the  input
def print_tracks(input)
  artist = find_artist_by_name(input)
  if !artist
    p "No Artist Available."
    puts "Here are the available artist names you can choose from: " + "#{print_all_artist_names}"
    input = gets.downcase.strip
    print_tracks(input)
  else
    artist.tracks.map do |track|
      p track.name
    end
  end
  # Artist.where('lower(name) = ?', input.downcase).first
end

  def print_album(input)
  end

end

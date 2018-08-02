class CommandLineInterface

def gets_user_input
  puts "We are your source for songs, artists, and albums"
  puts "Enter your search term:"
  gets.chomp
  end

  def find_artist_by_name(input)
    #binding.pry
    Artist.all.find_by(name: input)
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

def run
input = gets_user_input

#find find_artist_by_name is returning an empty array for some reason. fix that.
artist = find_artist_by_name(input)
print_tracks(artist)
end

def exit_app
  puts "Goodbye"
end

# def run
#
#   input = ""
#   while input
#   end
# input = gets_user_input
# print_tracks(input)
# end


#find artist with the name of the input
def print_tracks(artist)
  #artist = find_artist_by_name(input)
  #check to see if artist is in the artist array
  #name = artist
  #include is receiving an empty array from artist.
  if !Artist.all.include?(artist)
    p "No Artist Available."
    puts "Here are the available artist names and albums you can choose from: " + "#{print_all_artist_names}"
    puts
    #input = gets.downcase.strip
    run
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
  # Artist.where('lower(name) = ?', input.downcase).first
end

  def print_album(input)
  end

end

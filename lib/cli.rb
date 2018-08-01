class CommandLineInterface

def gets_user_input
  puts "We are your source for songs, artists, and albums"
  puts "Enter your search term:"
  gets.chomp
  end


  def find_artist_by_name(input)
    #binding.pry
    Artist.all.select do |artist|
      artist.name.downcase == input
    end

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


#find artist with the name of the  input
def print_tracks(artist)
  #artist = find_artist_by_name(input)
  #check to see if artist is in the artist array
  #name = artist
  if !Artist.all.include?(artist)
    binding.pry
    p "No Artist Available."
    puts "Here are the available artist names you can choose from: " + "#{print_all_artist_names}"
    #input = gets.downcase.strip
    run
    #binding.pry
    #print_tracks(input)
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

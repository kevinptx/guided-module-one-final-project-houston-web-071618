require_relative '../config/environment'
# require 'pry'
# # require 'rest-client'
# require 'json'
#
# def get_search_term
#   puts "Enter a search:"
#   search_term = gets.chomp
# end
#
# def get_and_parse_response(search_term)
#   response = RestClient.get("https://itunes.apple.com/search?term=#{search_term}")
# binding.pry
#   #response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=#{search_term}")
#   parsed_hash = JSON.parse(response)
#
#   items = parsed_hash["items"]
# end

# Request an input from the user
# Use that input to get search results
# Display results of seach on the screen

# After: Display interesting things about the search
# For example, find more information about the Artist
# Find other songs on the album

new_cli = CommandLineInterface.new
new_cli.run

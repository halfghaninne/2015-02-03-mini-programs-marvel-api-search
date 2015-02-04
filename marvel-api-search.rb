require 'pry'
require 'marvel_api'

class MarvelSearch
 
 def initialize 
   @client = Marvel::Client.new
   
   @client.configure do |config|
     config.api_key = '97573f8ab4874e28967e9a236978f789'
     config.private_key = '9a2339ea5fb2d988777b3a700b6b22019046e27d'
   end
 end 
 
  # puts "Enter a search term:"
  # search = gets.chomp.to_s

  def search(user_query)

  characters = @client.characters(name: user_query)
  # comics = @client.comics(name: user_query)
  # creators = @client.creators(name: user_query)
  # events = @client.events(name: user_query)
  # series = @client.series(name: user_query)
  # stories = @client.stories(name: user_query)

  puts characters
  # I'm finally getting return goobledigook! But Derek also used this API and is getting different return than me. His was formulated like a nice little hash. 

  end

# category_array = [characters, comics, creators, events, series, stories]
#
# THIS WORKED WHEN I THOUGHT SEARCHES RETURNED ARRAYS, REVISIT KNOWING THEY RETURN COMPLICATED HASHES:
# puts "We found these results:\n\n"
# category_array.each do |category|
#   if category.length >= 1
#     puts "#{category}"
#   end
# end

end

binding.pry
require 'pry'
require_relative 'marvel-api-search'

class Driver
  
  def initialize
    @new_api_recall = MarvelSearch.new
  end
  
  def search
    puts "Please enter your search term:"
    user_query = gets.chomp.to_s
    
    @new_api_recall.search(user_query)
    
  end
  
puts "Data provided by Marvel. © 2014 Marvel"

end
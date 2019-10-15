require 'open-uri'
require 'httparty'
require 'rubygems'
url = 'https://newsapi.org/v2/top-headlines?'\
      'country=us&'\
      'apiKey=51ed43aaa6734af7a6eab1b5375cd023'



response = HTTParty.get(url)

# puts response.body
# puts response.headers.inspect

puts response.headers.inspect

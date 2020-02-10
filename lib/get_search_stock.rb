require 'net/http'
require 'open-uri'
require 'json'
class SearchRequest
  attr_accessor :url_search_string

  def initialize(url_search_string = 'https://www.alphavantage.co/query?function=SYMBOL_SEARCH&keywords=')
    @url_search_string = url_search_string
  end


  def search_body

    puts "Type your search:"

    input = gets.chomp
    keyword_input_string = self.url_search_string + input +'&apikey=IR07445BNSQ56179'

    uri = URI.parse(keyword_input_string)
    search = Net::HTTP.get_response(uri)
    return search.body
  end
  def parse_json
    body = self.search_body
    body_parse = JSON.parse(body)

  end

end

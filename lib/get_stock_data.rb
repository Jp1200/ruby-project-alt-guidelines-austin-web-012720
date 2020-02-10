require 'net/http'
require 'open-uri'
require 'json'
class GetRequester
  attr_accessor :url_string
  api_key = 'IR07445BNSQ56179'
  def initialize(url_string = 'https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=')
    @url_string = url_string
  end
  def ask_user
    puts "Define your TIME SERIES: "
    puts "Options include "
  end
  search = '&interval=1min&outputsize=compact&apikey=IR07445BNSQ56179'
  def get_response_body
    uri = URI.parse(self.url_string)
    response = Net::HTTP.get_response(uri)
    return response.body

  end
  def parse_json
    body = self.get_response_body
    body_parse = JSON.parse(body)

  end

end

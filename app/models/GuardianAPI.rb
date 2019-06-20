class GuardianAPI

  require 'json'

  BASE_URL = http://horoscope-api.herokuapp.com/
  API_PARTIAL_URL = http://tapasweni-pathak.github.io/Horoscope-API

  def query
  request = HTTParty.get(BASE_URL + @search_format+API_PARTIAL_URL).to_json
  @request_hash = JSON.parse(request)
end

def initialize(user_search_input)
  @search_format = "q=#{user_search_input.gsub(" ", "%20")}&"


end

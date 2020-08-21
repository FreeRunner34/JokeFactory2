require 'pry'
require_relative './environment.rb'

class Chuck
    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        chuck = JSON.parse(get_response_body)
        get_response_body[52..-24]

    end
end
        